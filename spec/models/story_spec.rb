# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Story, type: :model do
  describe '#validations' do
    before do
      @story = build :story
    end
    it 'should create a story with user' do
      expect(@story).to be_valid
      expect(@story.user_id).to eq(1)
    end
    it 'should not create a story without user' do
      @story.user_id = nil
      expect(@story).to be_invalid
      expect(@story.errors.messages[:user]).to include('must exist')
    end
  end
end
