require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
	page.should have_selector('h1',:text => 'Sample App')

    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text =>"tutorial")
      end
    it "should not have a custom page title" do
	visit '/static_pages/home'
	page.should_not have_selector('title',:text =>' | Home')
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
