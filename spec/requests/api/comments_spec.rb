require 'rails_helper'

RSpec.describe "Api::Comments", type: :request do
  describe "GET /posts" do
    it "returns http success" do
      get "/api/comments/posts"
      expect(response).to have_http_status(:success)
    end
  end

end