require 'rails_helper'

RSpec.feature "User adds new author" do
    context "User enters full author information" do
        scenario "they see newly entered author details" do
            user = create(:user)

            visit root_path

            click_on "signInLink"

            fill_in "Email", with: user.email
            fill_in "Password", with: user.password

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