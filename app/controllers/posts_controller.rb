class PostsController < ApplicationController
  def destroy
    @post = Post.find(params[:id])
    @post.deleted? ? @post.really_destory : @post.destroy

    redirect_back(fallback_location: root_path)
  end

  def restore
    @post = Post.only_deleted.find(params[:id])
    @post.restore

    redirect_back(fallback_location: root_path)
  end
end
