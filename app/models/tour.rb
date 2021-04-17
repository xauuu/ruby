class Tour < ApplicationRecord
  belongs_to :category
  has_many :gallery
  mount_uploader :img, ToursUploader
end
