require "rails_helper"

RSpec.describe MedalhasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/medalhas").to route_to("medalhas#index")
    end

    it "routes to #new" do
      expect(:get => "/medalhas/new").to route_to("medalhas#new")
    end

    it "routes to #show" do
      expect(:get => "/medalhas/1").to route_to("medalhas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medalhas/1/edit").to route_to("medalhas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/medalhas").to route_to("medalhas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/medalhas/1").to route_to("medalhas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/medalhas/1").to route_to("medalhas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medalhas/1").to route_to("medalhas#destroy", :id => "1")
    end

  end
end
