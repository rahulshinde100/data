class AddAttachmentImageToImagedemos < ActiveRecord::Migration
  def self.up
    change_table :imagedemos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :imagedemos, :image
  end
end
