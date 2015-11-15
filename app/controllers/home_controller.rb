class HomeController < ApplicationController
  def index
    @posts = Post.order('updated_at desc').limit(5)
  end
end
