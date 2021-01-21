class Car < ApplicationRecord
    mount_uploader :image_url, ImageUploader

    belongs_to :user
    belongs_to :model
    belongs_to :car_type
    belongs_to :vehicle_status
    belongs_to :number_of_owner
    belongs_to :fuel_type
    belongs_to :gearbox
    belongs_to :color
    has_many :images
end
