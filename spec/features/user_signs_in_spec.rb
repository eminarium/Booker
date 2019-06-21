require 'rails_helper'

RSpec.feature "User signs in" do
    context "User enters valid email and password" do
        scenario "He sees books list page" do
            user = create(:user)

            visit root_path

            click_on "signInLink"

            fill_in "Email", with: user.email
            fill_in "Password", with: user.password

            click_button "Log In"

            expect(page).to have_content "Signed in successfully."
        end
    end

    context "User leaves email blank" do
        scenario "User sees 'Email left blank' error message" do
            user = create(:user)

            visit root_path

            click_on "signInLink"

            fill_in "Password", with: user.password

            click_button "Log In"

            expect(page).to have_content "Invalid Email or password."
        end
    end

    context "User leaves password blank" do
        scenario "User sees 'Password left blank' error message" do
            user = create(:user)

            visit root_path

            click_on "signInLink"

            fill_in "Email", with: user.email

            click_button "Log In"

            expect(page).to have_content "Invalid Email or password."
        end
    end

end