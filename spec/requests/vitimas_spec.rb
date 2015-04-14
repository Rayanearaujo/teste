require 'rails_helper'

RSpec.describe "Vitimas", :type => :request do
  describe "GET /vitimas" do
    it "works! (now write some real specs)" do
      get vitimas_path
      expect(response).to have_http_status(200)
    end
  end
end
