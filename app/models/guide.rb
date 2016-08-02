class Guide < ApplicationRecord
  validates :name, :location, :phone, :email, presence: true
end
