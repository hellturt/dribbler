class UsersController < ApplicationController
	before_action :find_user
	before_action :authenticate_user!

	def show
		@user_posts = @user.posts
	end

	def follow
		
		redirect_to @user
		flash[:notice] = "You are now following #{@user.name}."
	end

	def unfollow
		
		redirect_to @user
		flash[:notice] = "You are no longer following #{@user.name}."
	end

	private

	def find_user
		@user = User.find(params[:id])
	end

end
