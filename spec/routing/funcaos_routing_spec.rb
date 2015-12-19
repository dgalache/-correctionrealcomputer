require "rails_helper"

RSpec.describe FuncaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/funcaos").to route_to("funcaos#index")
    end

    it "routes to #new" do
      expect(:get => "/funcaos/new").to route_to("funcaos#new")
    end

    it "routes to #show" do
      expect(:get => "/funcaos/1").to route_to("funcaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/funcaos/1/edit").to route_to("funcaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/funcaos").to route_to("funcaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/funcaos/1").to route_to("funcaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/funcaos/1").to route_to("funcaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/funcaos/1").to route_to("funcaos#destroy", :id => "1")
    end

  end
end
