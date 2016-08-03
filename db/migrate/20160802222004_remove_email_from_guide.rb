class RemoveEmailFromGuide < ActiveRecord::Migration[5.0]
  def change
    remove_column :guides, :email, :string
  end
end
