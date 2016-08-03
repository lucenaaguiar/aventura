class AddLocationRefToTours < ActiveRecord::Migration[5.0]
  def change
    add_reference :tours, :location, foreign_key: true
  end
end
