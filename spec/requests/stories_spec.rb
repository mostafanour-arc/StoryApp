require 'rails_helper'

RSpec.describe "Stories", type: :request do
  let(:user) { create :user }
  describe "GET /index" do
    subject { get :index, params: { user_id: user.id } }
    it "returns a success response" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end
end
