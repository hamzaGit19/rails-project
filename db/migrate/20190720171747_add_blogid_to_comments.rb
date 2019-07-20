class AddBlogidToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :blog_id, :integer
    add_column :comments, :user, :string
  end
end
