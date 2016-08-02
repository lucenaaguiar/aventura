require 'rails_helper'

feature 'User create tour' do 
  scenario 'successfully' do
    visit new_tour_path

    fill_in 'Título',     with: 'Passeio a Serra da Mantiqueira' 
    fill_in 'Local', with: 'São Paulo, SP' 
    fill_in 'Categoria',       with: 'Trilha' 
    fill_in 'Guia',       with: 'Diego' 
    fill_in 'Contato',    with: '(11) 1111-1111' 
    fill_in 'Duração',    with: 120
    fill_in 'Preço',      with: 300.00
    fill_in 'Descrição',  with: 'Passeio a Serra da Mantiqueira com trilhas, cachoeiras, tiroleza' 

    click_on 'Criar Passeio'

    expect(page).to have_content 'Passeio a Serra da Mantiqueira' 
    expect(page).to have_content 'São Paulo, SP' 
    expect(page).to have_content 'Trilha' 
    expect(page).to have_content 'Diego' 
    expect(page).to have_content '(11) 1111-1111' 
    expect(page).to have_content 120
    expect(page).to have_content number_to_currency(300.00)
    expect(page).to have_content 'Passeio a Serra da Mantiqueira com trilhas, cachoeiras, tiroleza' 
  end
end
