require 'capybara'

def sign_up_as_sj
  visit new_user_url

  fill_in "Username", with: "SamuelJackson"
  fill_in "Password", with: "123456"
  click_button "Sign Up"
end

def sign_in_as_sj
  visit new_session_url

  fill_in "Username", with: "SamuelJackson"
  fill_in "Password", with: "123456"
  click_button "Sign In"
end
