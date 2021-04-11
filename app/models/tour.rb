class Tour < ApplicationRecord
  belongs_to :category
  mount_uploader :img, ToursUploader
end
