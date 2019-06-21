require 'rails_helper'

RSpec.feature "User adds new book" do
    context "User enter full book information" do
        scenario "they see newly entered book details" do
            user_email = "merdan.durdiyev@gmail.com"
            user_pass = "testpassword"

            user = create(:user)
            author = create(:author)

            visit root_path

            click_on "signInLink"

            fill_in "Email", with: user_email
            fill_in "Password", with: user_pass

            click_button "Log In"

            click_on "addNewBookLink"

            fill_in "Title", with: "Clear Book"
            fill_in "Description", with: "Very good book"
            select "J. Arthur", from: "book_author_id"

            click_button "Submit"

            expect(page).to have_content "Clear Book"
        end
    end
end