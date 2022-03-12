# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Reviews', type: :request do
  
  describe 'creating reviews' do
    let!(:user) {build :user}
    let!(:story) {create :story}
  context "when all attributes valid" do 
    it 'raises 201' do
      post "/stories/#{story.id}/reviews", params: {
        review: {
          comment: 'comment on story',
          rating: 5,
          user_id: user.id,
          story_id: story.id
        }
      }
      expect(response.status).to eq(201)
      body = JSON.parse(response.body)
      expect(body['comment']).to eq('comment on story')
      expect(body['rating']).to eq(5)
      expect(body['user_id']).to eq(user.id)
      expect(body['story_id']).to eq(story.id)
    end
  end
  context "when rating is not valid" do
    it 'raises 422' do
      post "/stories/#{story.id}/reviews", params: {
        review: {
          comment: 'comment on story',
          rating: 6,
          user_id: user.id,
          story_id: story.id
        }
      }
      expect(response.status).to eq(422)
      body = JSON.parse(response.body)
      expect(body).to eq("erros" => ["Rating must be less than or equal to 5"])
    end
  end
  context "when comment is empty" do
    it 'raises 422' do
      post "/stories/#{story.id}/reviews", params: {
        review: {
          comment: '',
          rating: 5,
          user_id: user.id,
          story_id: story.id
        }
      }
      expect(response.status).to eq(422)
      body = JSON.parse(response.body)
      expect(body).to eq("erros" => ["Comment can't be blank"])
    end
  end
  end
end
