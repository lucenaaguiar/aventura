require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'returns city and state in local' do
    location = Location.create(city: 'São Paulo', state: 'São Paulo')
    location.local == 'São Paulo'
  end
end
