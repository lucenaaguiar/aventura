class Tour < ApplicationRecord
  has_attached_file :picture, styles: { medium: '300x300>', thumb: '100x100>' }

  validates_attachment_content_type :picture, content_type: %r{\Aimage\/.*\Z}

  belongs_to :category
  belongs_to :location
  belongs_to :guide
end
