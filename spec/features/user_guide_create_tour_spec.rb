require 'rails_helper'

feature 'User create tour' do
  scenario 'successfully' do
    guide = create :guide
    login_as guide

    category = create(:category)
    location = create(:location)

    visit new_tour_path

    fill_in 'Título',       with: 'Passeio a Serra da Mantiqueira'
    select location.local,  from: 'Local'
    select category.name,   from: 'Categoria'
    fill_in 'Duração',      with: 120
    fill_in 'Preço',        with: 300.00
    fill_in 'Descrição',    with: 'Passeio a Serra da Mantiqueira com
                                 trilhas, cachoeiras, tiroleza'
    attach_file('Enviar Imagem', Rails.root + 'spec/fixtures/cat2.jpg')

    click_on 'Criar Passeio'

    expect(page).to have_content 'Passeio a Serra da Mantiqueira'
    expect(page).to have_content location.local
    expect(page).to have_content category.name
    expect(page).to have_content guide.name
    expect(page).to have_content guide.phone
    expect(page).to have_content 120
    expect(page).to have_content number_to_currency(300.00)
    expect(page).to have_content 'Passeio a Serra da Mantiqueira com
                                  trilhas, cachoeiras, tiroleza'

    expect(page).to have_xpath('//img')
  end
end
