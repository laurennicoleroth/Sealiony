class Url < ActiveRecord::Base
  belongs_to :user
  before_save :shorten

  validates :address, presence: { strict: true }
  validates_format_of :address, :with => /\A(http|https):\/\//
  validates :short_url, uniqueness: true

  def shorten
    self.short_url = SecureRandom.base64(7).gsub('=', '')
  end
end
