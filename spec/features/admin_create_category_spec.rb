require 'rails_helper'

feature 'Administrator create new category' do
  scenario 'successfully' do
    visit new_category_path

    fill_in 'Nome da categoria', with: 'Aventura'

    click_on 'Salvar categoria'

    expect(page).to have_content 'Aventura'
  end

  scenario 'with invalid data' do
    visit new_category_path

    click_on 'Salvar categoria'

    expect(page).to have_content 'Não foi possível cadastrar a categoria.'
  end
end
