# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Stories', type: :request do
  let!(:user) { create :user }
  describe 'Post Stories' do
    context "when all attributes is valid" do 
    it 'failed to post stories without user' do
      post '/stories', params: {
        story: {
          title: 'story 1',
          body: 'body 1',
          user_id: user.id
        }
      }
      expect(response.status).to eq(201)
      body = JSON.parse(response.body)
      expect(body['title']).to eq('story 1')
      expect(body['body']).to eq('body 1')
      expect(body['user_id']).to eq(user.id)
    end
  end
end
 
  context "when user not found" do 
      it "raises 422" do
        post '/stories', params: {
          story: {
            title: 'story 1',
            body: 'body 1',
            user_id: 5000
          }
        }
        expect(response.status).to eq(422)
        body = JSON.parse(response.body)
        expect(body).to eq({ 'errors' => ['User must exist'] })
    end
   end
end
