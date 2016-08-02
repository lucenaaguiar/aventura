require 'rails_helper'

feature 'Admin add guide' do
  scenario 'successfully' do
    guide = build :guide

    visit new_guide_path

    fill_in 'Nome', with: guide.name
    fill_in 'Localidade', with: guide.location
    fill_in 'Telefone', with: guide.phone
    fill_in 'Email', with: guide.email

    click_on 'Cadastrar Guia'

    expect(page).to have_content 'Guia cadastrado com sucesso.'
    expect(page).to have_content guide.name
    expect(page).to have_content guide.location
    expect(page).to have_content guide.phone
    expect(page).to have_content guide.email
  end
  scenario 'With blank fill_in' do
    visit new_guide_path

    click_on 'Cadastrar Guia'

    expect(page).to have_content 'Erro ao cadastrar guia.'
  end
end
