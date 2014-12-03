require 'spec_helper'

describe "StaticPages" do

let(:result){page.should have_selector('title',:text)}
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
	page.should have_selector('title',:text => "tutorial | Home")
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
	visit '/static_pages/help'

	page.should have_selector('title',:text => "tutorial | Help")

     end
  end
  describe "About page" do

    it "should have the content 'about us'" do
	visit '/static_pages/about'
	page.should have_selector('title',:text => "tutorial | About")
	end
    end
  describe "Contacts" do
    it "should have the content 'Contacts'" do
	visit '/static_pages/contacts'
	page.should have_selector('title',:text => "tutorial | Contacts")
	end
    end
end
