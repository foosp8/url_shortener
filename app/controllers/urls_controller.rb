class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def show
    # byebug
    @url = Url.find(params[:id])
  end

  def new
  @url = Url.new
  end

end
