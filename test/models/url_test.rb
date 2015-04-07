require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  def setup
    @url = Url.new(address: "http://animals.sandiegozoo.org/animals/sea-lion",
                    click_count: 0)
  end

  test "should be valid" do
    # assert @url.valid?
  end

  test "address should be present" do
    @url.address = "            "
    assert_not @url.valid?
  end
end
