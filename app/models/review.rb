class Review < ApplicationRecord
  belongs_to :story
  belongs_to :user
  validates_uniqueness_of :user_id, :scope => [:story_id]
  validates :comment, presence: true

  scope :top_rated, -> { where('rating >=', average_rating )}

   

end
