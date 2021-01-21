class Search < ApplicationRecord
  self.inheritance_column = "not_sti"

    def search_cars
        cars = Car.all 

        cars = cars.where(model_id: model_id) if model_id.present?
        cars = cars.where("price >= ?", price) if price.present?
        cars = cars.where("price <= ?", price_max) if price_max.present?
        cars = cars.where("manufacture_year >= ?", manufacture_year) if manufacture_year.present?
        cars = cars.where("manufacture_year <= ?", year_max) if year_max.present?
        cars = cars.where("mileage <= ?", mileage_max) if mileage_max.present?
        cars = cars.where(fuel_type_id: fuel_type_id) if fuel_type_id.present?
        return cars
    end 
end
