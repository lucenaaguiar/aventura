FactoryGirl.define do
  factory :tour do
    sequence(:title) { |n| "Passeio_#{n}" }
    location 'Rondonia'
    category
    duration 120
    amount 50.0
    description 'Passeio de bike em Rondonia'
  end
end
