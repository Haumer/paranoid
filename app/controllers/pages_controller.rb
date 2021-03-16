class PagesController < ApplicationController
  # skip_before_action :authenticate_user!

  def home
    @users = User.all
    @posts = Post.all
    @deleted_posts = Post.only_deleted
  end
end
