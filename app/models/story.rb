class Story < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true

  paginates_per(2)
end
