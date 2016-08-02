class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :location
      t.string :category
      t.string :guide
      t.string :contact
      t.integer :duration
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
