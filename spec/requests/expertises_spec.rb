require 'rails_helper'

RSpec.describe "Expertises", type: :request do
  describe "GET /expertises" do
    it "works! (now write some real specs)" do
      get expertises_path
      expect(response).to have_http_status(200)
    end
  end
end
