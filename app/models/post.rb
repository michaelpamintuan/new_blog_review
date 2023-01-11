class Post < ApplicationRecord
  validates :title, :presence => true
  validates :content, :presence => true
  has_rich_text :content
  mount_uploaders :image_url, ImageUploader
  serialize :image_url, JSON 
  belongs_to :user
end
