# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :story
  belongs_to :user
  validates_uniqueness_of :user_id, scope: [:story_id]
  validates :comment, presence: true

  paginates_per(10)
end
