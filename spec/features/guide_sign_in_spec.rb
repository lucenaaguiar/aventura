require 'rails_helper'

feature 'Guide sign in' do
  scenario 'successfully' do
    guide = create :guide

    visit root_path

    click_on 'Entrar'

    fill_in 'Email', with: guide.email
    fill_in 'Senha', with: guide.password

    within('form') do
      click_on 'Entrar'
    end

    expect(current_path).to eq(root_path)
    expect(page).to have_content "Olá #{guide.email}"
  end
end
