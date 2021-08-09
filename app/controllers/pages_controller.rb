class PagesController < ApplicationController
  def home
    redirect_to posts_path
  end

  def about

  end
end
