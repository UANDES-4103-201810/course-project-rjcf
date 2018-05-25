class AddAttachmentAvatarToProyects < ActiveRecord::Migration[5.1]
  def self.up
    change_table :proyects do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :proyects, :avatar
  end
end
