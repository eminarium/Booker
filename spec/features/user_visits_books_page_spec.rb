require 'rails_helper'

RSpec.feature "User visits Books page" do
    scenario "he sees list of books" do
        visit books_url

        expect(page).to have_content "Books"
    end
end

RSpec.feature "User presses Books link button" do
    scenario "and is redirected to 'Books' page" do
        visit root_path

        
        click_on "booksPageLink"

        expect(page).to have_content "Books"
    end
end