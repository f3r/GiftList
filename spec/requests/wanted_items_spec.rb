require 'rails_helper'

RSpec.describe "WantedItems", :type => :request do
  describe "GET /wanted_items" do
    it "works! (now write some real specs)" do
      get wanted_items_path
      expect(response.status).to be(200)
    end
  end
end
