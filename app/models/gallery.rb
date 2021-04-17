class Gallery < ApplicationRecord
    belongs_to :tour
    serialize :img, Array
    mount_uploaders :img, ToursUploader
end
