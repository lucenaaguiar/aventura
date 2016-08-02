require 'rails_helper'

feature 'User view tour' do
  scenario 'successfully' do
    tour = create :tour

    visit root_path

    click_on tour.title

    expect(page).to have_content tour.title
    expect(page).to have_content tour.location
    expect(page).to have_content tour.category
    expect(page).to have_content tour.guide
    expect(page).to have_content tour.contact
    expect(page).to have_content tour.duration
    expect(page).to have_content number_to_currency(tour.amount)
    expect(page).to have_content tour.description
  end

  scenario 'without tour' do
    visit root_path

    expect(page).to have_content 'Nenhum passeio cadastrado.'
  end

end
