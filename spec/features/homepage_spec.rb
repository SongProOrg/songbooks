require "rails_helper"

RSpec.feature "Homepage", type: :feature do
  scenario "Visiting the homepage" do
    visit "/"
    expect(page).to have_content "Songbooks"
  end
end
