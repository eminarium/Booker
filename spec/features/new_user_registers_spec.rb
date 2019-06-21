require 'rails_helper'

RSpec.feature "New user registers" do

    context "User enter full information" do
        scenario "user sees welcome message" do
            visit root_path

            click_on "registerLink"

            fill_in "Email", with: "mdyc@yahoo.com"
            fill_in "Password", with: "salamdunya"
            fill_in "Password Confirmation", with: "salamdunya"

            click_button "Sign Up"

            expect(page).to have_content "Welcome! You have signed up successfully."
        end
    end

    context "User enter short password" do
        scenario "user sees 'Password too short' error message" do
            visit root_path

            click_on "registerLink"

            fill_in "Email", with: "mdyc@yahoo.com"
            fill_in "Password", with: "aha"
            fill_in "Password Confirmation", with: "aha"

            click_button "Sign Up"

            expect(page).to have_content "Password is too short (minimum is 6 characters)"
        end
    end

    context "User leaves email field blank" do
        scenario "user sees 'Email blank' error message" do
            visit root_path
            
            click_on "registerLink"

            fill_in "Password", with: "salamdunya"
            fill_in "Password Confirmation", with: "salamdunya"

            click_button "Sign Up"

            expect(page).to have_content "Email can't be blank"
        end
    end

    context "User leaves password field blank" do
        scenario "user sees 'Password can not be blank' error message" do
            visit root_path
            
            click_on "registerLink"

            fill_in "Email", with: "test@gmail.com"
            fill_in "Password Confirmation", with: "salamdunya"

            click_button "Sign Up"

            expect(page).to have_content "Password can't be blank"
        end
    end

    context "User leaves password confirmation field blank" do
        scenario "user sees 'Password confirmation does not match password' error message" do
            visit root_path
            
            click_on "registerLink"

            fill_in "Email", with: "test@gmail.com"
            fill_in "Password", with: "salamdunya"

            click_button "Sign Up"

            expect(page).to have_content "Password confirmation doesn't match Password"
        end
    end

end