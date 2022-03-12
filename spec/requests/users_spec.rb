# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /top' do
    let!(:user) { create :user }
    it 'returns http success with top stories' do
      get '/stories/top'
      expect(response.status).to eq(200)
    end
  end
end
