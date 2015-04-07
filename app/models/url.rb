class Url < ActiveRecord::Base
  belongs_to :user

  validates :address, presence: { strict: true }
  validates_format_of :address, :with => /\A(http|https):\/\//

end
