require 'rails_helper'

RSpec.feature "User adds new book review" do
    scenario "they see newly entered review details" do
        user = create(:user)
        author = create(:author)

        visit root_path

        click_on "signInLink"

        fill_in "Email", with: user.email
        fill_in "Password", with: user.password

        click_button "Log In"

        click_on "addNewBookLink"

        fill_in "Title", with: "Clear Book"
        fill_in "Description", with: "Very good book"
        select "J. Arthur", from: "book_author_id"

        click_button "Submit"

        expect(page).to have_content "Clear Book"

        click_on "addNewBookReview"

        fill_in "review_note", with: "New Review: Very good book"

        click_button "Submit"

        expect(page).to have_content "New Review: Very good book"
    end
end