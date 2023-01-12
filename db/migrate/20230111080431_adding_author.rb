class AddingAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :creator, :string
  end
end
