class Post < ApplicationRecord
  has_one :listing
  belongs_to :user
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :content, presence: true, length: { minimum: 10, maximum: 1000 }
end
