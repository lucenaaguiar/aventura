require 'rails_helper'

feature 'Admin create location' do
  scenario 'successfully' do
    location = build :location

    visit new_location_path

    fill_in 'Cidade', with: location.city
    fill_in 'Estado', with: location.state

    click_on 'Cadastrar Localidade'

    expect(page).to have_content 'Localidade cadastrada com sucesso.'
    expect(page).to have_content location.city
    expect(page).to have_content location.state
  end

  scenario 'with blank fields' do
    visit new_location_path

    click_on 'Cadastrar Localidade'

    expect(page).to have_content 'Não foi possível cadastrar a localidade.'
  end
end
