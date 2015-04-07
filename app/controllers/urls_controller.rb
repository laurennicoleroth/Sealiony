class UrlsController < ApplicationController
  def index
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
