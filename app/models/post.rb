class Post < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :content, presence: true, length: { minimum: 10, maximum: 300 }
end
