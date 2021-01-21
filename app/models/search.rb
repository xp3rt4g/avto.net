class Search < ApplicationRecord
  self.inheritance_column = "not_sti"

    def search_cars
        cars = Car.all 

        cars = cars.where(model_id: model_id) if model_id.present?
        return cars
    end 
end
