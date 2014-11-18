require "rails_helper"

RSpec.describe WantedItemsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wanted_items").to route_to("wanted_items#index")
    end

    it "routes to #new" do
      expect(:get => "/wanted_items/new").to route_to("wanted_items#new")
    end

    it "routes to #show" do
      expect(:get => "/wanted_items/1").to route_to("wanted_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wanted_items/1/edit").to route_to("wanted_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wanted_items").to route_to("wanted_items#create")
    end

    it "routes to #update" do
      expect(:put => "/wanted_items/1").to route_to("wanted_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wanted_items/1").to route_to("wanted_items#destroy", :id => "1")
    end

  end
end
