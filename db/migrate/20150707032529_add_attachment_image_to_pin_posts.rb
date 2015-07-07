class AddAttachmentImageToPinPosts < ActiveRecord::Migration
  def self.up
    change_table :pin_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pin_posts, :image
  end
end
