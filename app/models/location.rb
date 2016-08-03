class Location < ApplicationRecord
  validates :state, :city, presence: true
  has_many :tours

  def local
    "#{city}, #{state}"
  end
end
