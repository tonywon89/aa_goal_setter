require 'spec_helper'
require 'rails_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content("New User")
  end

  feature "signing up a user" do
    scenario "shows username on the homepage after signup" do
      sign_up_as_sj
      expect(page).to have_content("SamuelJackson")
    end
  end

end

feature "logging in" do
  scenario "shows username on the homepage after login" do
    FactoryGirl.create(:samuel_jackson)
    sign_in_as_sj
    expect(page).to have_content("SamuelJackson")
  end
end

feature "logging out" do
  scenario "begins with logged out state" do
    visit root_url
    expect(page).to have_content("Login")
  end
end
