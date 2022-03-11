# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it 'should create a user' do
      user = build :user
      expect(user).to be_valid
      expect(user.username).to eq('Ahmed')
    end
    it 'should not create a user without username' do
      user = build :user, username: nil
      expect(user).to be_invalid
      expect(user.errors.messages).to include { "username can't be blank" }
    end
  end
end
