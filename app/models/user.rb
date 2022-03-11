# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true
  has_many :stories
  has_many :reviews, through: :stories
end
