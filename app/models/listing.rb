class Listing < ApplicationRecord
  belongs_to :post, dependent: :destroy
end
