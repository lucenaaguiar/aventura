require 'rails_helper'

feature 'User view tours' do
  scenario 'successfully' do
    tours = create_list :tour, 10

    visit root_path

    tours.each do |tour|
      expect(page).to have_link tour.title
      expect(page).to have_content tour.location
      expect(page).to have_content tour.category
    end
  end
end
