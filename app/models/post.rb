class Post < ApplicationRecord
  has_one :listing, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :content, presence: true, length: { minimum: 10, maximum: 1000 }
  has_one_attached :picture
  belongs_to :category
end
