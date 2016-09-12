class UsersController < ApplicationController
	def show
     @user = User.find(params[:id])
     @posts = @user.posts.reorder("created_at DESC").paginate(page: params[:page])
   end
end
