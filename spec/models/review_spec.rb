# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '#validations' do
    before do 
      @review = build :review
    end
    it 'should create a review with all valid attributes' do
      expect(@review).to be_valid
      expect(@review.rating).to eq(1)
    end
    it 'should not create a review without comment' do
      @review.comment = nil
      expect(@review).to be_invalid
      expect(@review.errors.messages[:comment]).to include("can't be blank")
    end
    describe 'rating range should be in range between 1 And 5' do
      it 'rating should be above 0' do
      @review.rating = 0
      expect(@review).to be_invalid
      expect(@review.errors.messages[:rating]).to include('must be greater than or equal to 1')
      @review.rating = 2
      expect(@review).to be_valid
    end
    it 'rating should be below 5' do
      @review.rating = 6
      expect(@review).to be_invalid
      expect(@review.errors.messages[:rating]).to include('must be less than or equal to 5')
    end
  end
end
end
