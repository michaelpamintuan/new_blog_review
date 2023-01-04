class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :video_url
      t.string :image_url
      t.string :status, default: 'draft'
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
