require 'rails_helper'

feature 'Admin add guide' do
  scenario 'successfully' do
    guide = build :guide

    visit new_guide_registration_path

    fill_in 'Nome', with: guide.name
    fill_in 'Localidade', with: guide.location
    fill_in 'Telefone', with: guide.phone
    fill_in 'Email', with: guide.email
    fill_in 'Senha', with: guide.password
    fill_in 'Confirme senha', with: guide.password

    click_on 'Cadastrar Guia'

    expect(page).to have_content "Olá #{guide.email}"

  end
  scenario 'With blank fill_in' do
    visit new_guide_registration_path

    click_on 'Cadastrar Guia'

    expect(page).to have_content 'Sign up Please review the problems below:'
  end
end
