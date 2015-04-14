require "rails_helper"

RSpec.describe VitimasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vitimas").to route_to("vitimas#index")
    end

    it "routes to #new" do
      expect(:get => "/vitimas/new").to route_to("vitimas#new")
    end

    it "routes to #show" do
      expect(:get => "/vitimas/1").to route_to("vitimas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vitimas/1/edit").to route_to("vitimas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vitimas").to route_to("vitimas#create")
    end

    it "routes to #update" do
      expect(:put => "/vitimas/1").to route_to("vitimas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vitimas/1").to route_to("vitimas#destroy", :id => "1")
    end

  end
end
