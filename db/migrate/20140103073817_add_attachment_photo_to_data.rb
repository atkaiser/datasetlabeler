class AddAttachmentPhotoToData < ActiveRecord::Migration
  def self.up
    change_table :data do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :data, :photo
  end
end
