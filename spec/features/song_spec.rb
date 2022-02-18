require "rails_helper"

RSpec.feature "Songs", type: :feature do
  scenario "Add a song" do
    visit "/"
    click_on 'Add a Song'
    fill_in 'Title', with: 'Space Oddity'
    fill_in 'Artist', with: 'David Bowie'
    fill_in 'Body', with: '[C] Ground Control to Major [Em]Tom'
    click_on 'Create Song'
    expect(page).to have_selector('h1', text: 'Space Oddity')
    expect(page).to have_selector('h2', text: 'David Bowie')
    expect(page).to have_content('[C] Ground Control to Major [Em]Tom')
  end
end
