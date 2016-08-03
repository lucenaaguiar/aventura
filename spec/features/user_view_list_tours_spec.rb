require 'rails_helper'

feature 'User view tours' do
  scenario 'successfully' do
    category = create(:category)
    tours = create_list(:tour, 10, category: category)

    visit root_path

    tours.each do |tour|
      expect(page).to have_link tour.title
      expect(page).to have_content tour.location.local
      expect(page).to have_content tour.category.name
    end
  end
end
