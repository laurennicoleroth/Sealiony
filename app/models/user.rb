class User < ActiveRecord::Base
  validates :first_name, presence: { strict: true }
end
