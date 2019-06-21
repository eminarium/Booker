require 'rails_helper'

RSpec.feature "User adds new author" do
    context "User enters full author information" do
        scenario "they see newly entered author details" do
            user_email = "merdan.durdiyev@gmail.com"
            user_pass = "testpassword"

            user = create(:user)

            visit root_path

            click_on "signInLink"

            fill_in "Email", with: user_email
            fill_in "Password", with: user_pass

            click_button "Log In"

            click_on "addNewAuthorLink"

            fill_in "first_name", with: "James"
            fill_in "last_name", with: "Arthur"
            fill_in "about", with: "Good author"
            #fill_in "author_rating", with: 3

            click_button "Submit"

            expect(page).to have_content "James Arthur"
        end
    end
end