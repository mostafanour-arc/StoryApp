# frozen_string_literal: true

class Story < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :title, presence: true
  validates :body, presence: true
  paginates_per(50)
end
