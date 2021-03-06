class UsersController < ApplicationController
	before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
	before_action :correct_user,   only: [:edit, :update]
	before_action :admin_user,     only: :destroy
	before_filter :skip_password_attribute, only: :update

	def index
    	@users = User.paginate(page: params[:page]).limit(5)
 	end

	def new
		if signed_in?
			redirect_to current_user
		else
			@user = User.new
		end
	end

	def show
		@user = User.find(params[:id])
		@reports = @user.reports.paginate(page: params[:page])
	end

	def create
		if signed_in?
			redirect_to current_user
		else
		    @user = User.new(user_params)
		    if @user.save
		      sign_in @user
			  flash[:success] = "Welcome to Surf Monk App!"
		      redirect_to @user
		    else
		      render 'new'
		    end
		end
	end

	def destroy
		user = User.find(params[:id])
		user.destroy unless user == current_user
		flash[:success] = "User deleted."
		redirect_to users_url
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			# Handle a successful update.
			flash[:success] = "Profile updated"
			redirect_to @user
		else
			render 'edit'
		end
  end

	private

	    def user_params
			params.require(:user).permit(:name, :email, :password,
	                                   :password_confirmation, :surfer_or_spongy)
	    end

	    # Before filters
		def signed_in_user
			store_location
			redirect_to signin_url, notice: "Please sign in." unless signed_in?
		end

		def correct_user
			@user = User.find(params[:id])
			redirect_to(root_url) unless current_user?(@user)
		end

		def admin_user
			redirect_to(root_url) unless current_user.is_admin
		end

		def skip_password_attribute
			if params[:password].blank? && params[:password_validation].blank?
				params.except!(:password, :password_validation)
			end
		end
end
