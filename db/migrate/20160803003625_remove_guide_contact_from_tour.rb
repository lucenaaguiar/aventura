class RemoveGuideContactFromTour < ActiveRecord::Migration[5.0]
  def change
    remove_column :tours, :guide, :string
    remove_column :tours, :contact, :string
  end
end
