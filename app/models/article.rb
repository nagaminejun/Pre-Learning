class Article < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true,  length: { maximum: 300 }
end
