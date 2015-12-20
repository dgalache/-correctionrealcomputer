require "rails_helper"

RSpec.describe EmpregadorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/empregadors").to route_to("empregadors#index")
    end

    it "routes to #new" do
      expect(:get => "/empregadors/new").to route_to("empregadors#new")
    end

    it "routes to #show" do
      expect(:get => "/empregadors/1").to route_to("empregadors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/empregadors/1/edit").to route_to("empregadors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/empregadors").to route_to("empregadors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/empregadors/1").to route_to("empregadors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/empregadors/1").to route_to("empregadors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/empregadors/1").to route_to("empregadors#destroy", :id => "1")
    end

  end
end
