require 'spec_helper'

describe "click count increment behavior", js: true do
  # let(:url) { Url.create(:address => 'http://www.google.com') }

  it "increments a counter on url" do
    url = Url.new(:address => 'http://www.google.com')
    url.save!
    visit '/'
    save_and_open_page
    within("#li1") do
      count = url.click_count
      click_link("link1")
      expect(url.reload.click_count).to eq(count + 1)
    end
  end
end
