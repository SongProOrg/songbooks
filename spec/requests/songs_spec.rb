require 'rails_helper'

RSpec.describe "Songs", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/songs/new"
      expect(response).to have_http_status(:success)
    end
  end

end
