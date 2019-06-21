require 'rails_helper'

RSpec.feature "User clicks Authors link button" do
    scenario "He sees list of authors" do
        visit root_path

        click_on "authorsPageLink"

        expect(page).to have_content "Authors"
    end
end