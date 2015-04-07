class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    url = Url.new(url_params)
    if url.save
      redirect_to "/"
    else
      [500, "There is a problem with the url."]
      flash[:error] = "There is a problem with the url."
      redirect_to '/'
    end
  end

  def count
    @url = Url.find(params[:id])
    if @url
      p @url.click_count += 1
      @url.save
    end
    redirect_to @url.address
  end

  def show
  end

  def update
  end
private
  def url_params
    params.require(:url).permit(:address)
    # params.require(:url).permit(:address).merge(user_id: current_user.id)
  end
end
