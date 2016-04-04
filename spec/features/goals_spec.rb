require 'spec_helper'
require 'rails_helper'

feature "goals can be created by user" do

  let(:sj) { FactoryGirl.create(:samuel_jackson) }

  scenario "make new goal page for user exists" do
    visit new_goal_url
    expect(page).to have_content("New Goal")
  end

  scenario "expect make goal page to have body for the goal" do
    visit new_goal_url
    expect(page).to have_content("Body")
  end

  scenario "user sets goal" do
    sign_up_as_sj

    visit new_goal_url

    fill_in "Body", with: "Kill all the snakes on the plane"
    choose "Public"

    click_button "Make Goal"

    expect(page).to have_content("Kill all the snakes on the plane")
  end

end
