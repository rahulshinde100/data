require "rails_helper"

RSpec.describe Articles123sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/articles123s").to route_to("articles123s#index")
    end

    it "routes to #new" do
      expect(:get => "/articles123s/new").to route_to("articles123s#new")
    end

    it "routes to #show" do
      expect(:get => "/articles123s/1").to route_to("articles123s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/articles123s/1/edit").to route_to("articles123s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/articles123s").to route_to("articles123s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/articles123s/1").to route_to("articles123s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/articles123s/1").to route_to("articles123s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/articles123s/1").to route_to("articles123s#destroy", :id => "1")
    end

  end
end
