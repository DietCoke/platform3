require 'rails_helper'
require 'spec_helper'

describe "Users" do
  describe "GET /users/new" do
    it "displays form" do
      visit new_user_url
      click_button "Register"
      page.should have_content("Please enter an email address")
      fill_in "Email", :with => "giridharsk@gmail.com"
      click_button "Register"
      page.should have_content("Please enter a password")
      fill_in "Password", :with => "getin123"
      click_button "Register"
      page.should have_content("Please confirm your password")
      fill_in "Password Confirmation", :with => "getin123"
      click_button "Register"
      page.should have_content("Email address must be unique")
      fill_in "Email", :with => "giridharsampath@gmail.com"
      click_button "Register"
    end
  end
end