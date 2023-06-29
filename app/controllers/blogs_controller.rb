class BlogsController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
  end

  def cretate
    Blog.create()
    redirect_to 
  end

end
