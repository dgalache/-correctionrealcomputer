require 'rails_helper'

RSpec.describe "Empregadors", type: :request do
  describe "GET /empregadors" do
    it "works! (now write some real specs)" do
      get empregadors_path
      expect(response).to have_http_status(200)
    end
  end
end
