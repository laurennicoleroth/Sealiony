require 'spec_helper'

describe "click count increment behavior" do
  # before :each do
  #   Url.make(:address => 'http://www.google.com')
  # end
  let(:url) { Url.create(:address => 'http://www.google.com') }

  it "increments a counter on url" do
    visit '/'
    save_and_open_page
    within("#{url.id}") do
      click_link("http://localhost:3000/#{url.short_url}")
    end
  end
end
