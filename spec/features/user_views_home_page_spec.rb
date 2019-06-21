require 'rails_helper'

RSpec.feature "User views Home page" do
    scenario "they see book list" do
        visit root_path

        expect(page).to have_text "Books"
    end
end