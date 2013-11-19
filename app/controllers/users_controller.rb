class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
	    @user = User.new(user_params)
	    if @user.save
	      # Handle a successful save.
		  flash[:success] = "Welcome to Surf Monk App!"
	      redirect_to @user
	    else
	      render 'new'
	    end
  end

	private

	    def user_params
			params.require(:user).permit(:name, :email, :password,
	                                   :password_confirmation, :surfer_or_spongy)
	    end

end
