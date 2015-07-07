class AddUserIdToPinPosts < ActiveRecord::Migration
  def change
    add_column :pin_posts, :user_id, :integer
    add_index :pin_posts, :user_id
  end
end
