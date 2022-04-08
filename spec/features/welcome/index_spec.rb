require 'rails_helper'

RSpec.describe 'welcome page' do
  it 'can search for parks by state' do
    visit root_path

    expect(page).to have_content("Park Search")

    select "Tennessee", from: "state"
    click_on "Find Parks"

    expect(current_path).to eq(parks_path)
    expect(page).to have_content("15 Parks")

    within (first(".park-info")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".description")
      expect(page).to have_css(".direction_info")
      expect(page).to have_css(".standard_hours")
    end
  end
end
