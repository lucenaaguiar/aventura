class RemoveLocationFromTours < ActiveRecord::Migration[5.0]
  def change
    remove_column :tours, :location, :string
  end
end
