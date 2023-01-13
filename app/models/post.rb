class Post < ApplicationRecord
  validates :title, :presence => true
  validates :content, :presence => true
  has_rich_text :content
  mount_uploader :image_url, ImageUploader
  # serialize :image_url, JSON 
  belongs_to :user

  scope :next, lambda {|id| where("id > ?",id).order("id ASC") } # this is the default ordering for AR
  scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }
end
