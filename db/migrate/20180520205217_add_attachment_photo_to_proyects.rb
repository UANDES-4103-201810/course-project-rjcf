class AddAttachmentPhotoToProyects < ActiveRecord::Migration[5.1]
  def self.up
    change_table :proyects do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :proyects, :photo
  end
end
