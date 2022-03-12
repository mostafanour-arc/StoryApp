# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :story
  belongs_to :user
  validates_uniqueness_of :user_id, scope: [:story_id]
  validates :comment, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  paginates_per(10)
end
