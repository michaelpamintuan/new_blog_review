class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
    @latest_posts = Post.last(4)
  end

  def about
  end

  def dashboard
  end
  
end
