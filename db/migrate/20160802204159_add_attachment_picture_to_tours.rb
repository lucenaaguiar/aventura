class AddAttachmentPictureToTours < ActiveRecord::Migration
  def self.up
    change_table :tours do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :tours, :picture
  end
end
