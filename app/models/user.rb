class User < ApplicationRecord
  validates :username, presence: true
  has_many :stories
end
