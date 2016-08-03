require 'rails_helper'

feature 'User search tour by location' do
  scenario 'successfully' do
    category = create(:category)
    category1 = create(:category, name: 'Trilha')
    guide = create :guide
    tour = create(:tour, guide: guide, category: category)
    tour1 = create(:tour, guide: guide, category: category1)

    visit root_path

    select category.name, from: 'Tipo de passeio:'
    click_on 'Buscar'

    expect(page).to have_content tour.title
    expect(page).to have_content tour.location.local
    expect(page).to have_content tour.category.name
    expect(page).to have_content tour.guide.name
    expect(page).to have_content tour.description
    expect(page).to_not have_content tour1.title
  end
end
