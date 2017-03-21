class UsersController < ApplicationController
	before_action :find_user
	before_action :authenticate_user!

	def show
		@user_posts = @user.posts
	end

	private

	def find_user
		@user = User.find(params[:id])
	end
end
