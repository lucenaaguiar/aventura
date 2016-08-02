FactoryGirl.define do
  factory :guide do
    sequence(:name) { |n| "Passeio_#{n}" }
    location 'Maranhao'
    phone '12345678'
    email 'email@meu.com'
  end
end
