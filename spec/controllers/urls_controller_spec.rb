require 'spec_helper'

describe UrlsController do
  let(:url) {Url.new(address: "https://www.google.com")}

  it "index returns all urls" do
    get :index
    expect(assigns(:urls)).to eq(Url.all)
  end

end
