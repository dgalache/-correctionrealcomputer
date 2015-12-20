require "rails_helper"

RSpec.describe EmpregadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/empregados").to route_to("empregados#index")
    end

    it "routes to #new" do
      expect(:get => "/empregados/new").to route_to("empregados#new")
    end

    it "routes to #show" do
      expect(:get => "/empregados/1").to route_to("empregados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/empregados/1/edit").to route_to("empregados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/empregados").to route_to("empregados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/empregados/1").to route_to("empregados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/empregados/1").to route_to("empregados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/empregados/1").to route_to("empregados#destroy", :id => "1")
    end

  end
end
