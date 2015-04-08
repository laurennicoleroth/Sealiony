require 'spec_helper'

describe UrlsController do
  let(:link) {Url.new(address: "https://www.google.com")}

  it "index returns all urls" do
    get :index
    expect(assigns(:urls)).to eq(Url.all)
  end

  it "creates a url" do
    params = { url: {address: "https://www.google.com"}}
    post(:create, params)
    expect(Url.last.address).to eq("https://www.google.com")
  end

  it "should not create a url when params are invalid" do
    params = { url: {address:"blkafklsdfjkldfslf"}}
    post(:create, params)
    expect(:create).to raise_error
  end
end
