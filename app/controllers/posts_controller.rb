class PostsController < ApplicationController

protect_from_forgery :except => [:search]  
  def index
    @posts = Post.all.reorder("created_at DESC").paginate(page: params[:page])
    @filter = "present"
  end

  def create
    @currentUser = current_user.id
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to user_path(@currentUser)
  end

  def new
    @post = Post.new
  end

  def destroy
  end


  def search      
    @filter = "search"
    @posts = Post.search(params[:searching]).reorder("created_at DESC").paginate(page: params[:page])
    p @posts
    respond_to do |format|
    format.js 
    format.html    
  end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
