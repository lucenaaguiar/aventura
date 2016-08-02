class Location < ApplicationRecord
  validates :state, :city, presence: true
end
