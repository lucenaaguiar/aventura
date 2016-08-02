class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :location
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
