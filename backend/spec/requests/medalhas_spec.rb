require 'rails_helper'

RSpec.describe "Medalhas", type: :request do
  describe "GET /medalhas" do
    it "works! (now write some real specs)" do
      get medalhas_path
      expect(response).to have_http_status(200)
    end
  end
end
