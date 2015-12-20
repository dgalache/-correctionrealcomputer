require "rails_helper"

RSpec.describe OrdemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ordems").to route_to("ordems#index")
    end

    it "routes to #new" do
      expect(:get => "/ordems/new").to route_to("ordems#new")
    end

    it "routes to #show" do
      expect(:get => "/ordems/1").to route_to("ordems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ordems/1/edit").to route_to("ordems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ordems").to route_to("ordems#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ordems/1").to route_to("ordems#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ordems/1").to route_to("ordems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ordems/1").to route_to("ordems#destroy", :id => "1")
    end

  end
end
