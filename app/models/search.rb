class Search < ApplicationRecord
  self.inheritance_column = "not_sti"

    def search_cars
        cars = Car.all.joins(:model)

        cars = cars.where("models.manufacturer_id = ?", manufacturer_id) if manufacturer_id.present?
        cars = cars.where(model_id: model_id) if model_id.present? and model_id != 0
        cars = cars.where("price >= ?", price) if price.present?
        cars = cars.where("price <= ?", price_max) if price_max.present?
        cars = cars.where("manufacture_year >= ?", manufacture_year) if manufacture_year.present?
        cars = cars.where("manufacture_year <= ?", year_max) if year_max.present?
        cars = cars.where("mileage <= ?", mileage_max) if mileage_max.present?
        cars = cars.where("mileage >= ?", mileage) if mileage.present?
        cars = cars.where(fuel_type_id: fuel_type_id) if fuel_type_id.present?
        cars = cars.where(car_type_id: car_type_id) if car_type_id.present? and car_type_id != 0
        cars = cars.where(vehicle_status_id: vehicle_status_id) if vehicle_status_id.present? and vehicle_status_id != 0
        cars = cars.where(gearbox_id: gearbox_id) if gearbox_id.present?
        cars = cars.where("ccm >= ?", ccm) if ccm.present?
        cars = cars.where("ccm <= ?", ccm_max) if ccm_max.present?
        cars = cars.where("power <= ?", power_max) if power_max.present?
        cars = cars.where("power >= ?", power) if power.present?
        cars = cars.where(avaliable: avaliable) if avaliable.present? and avaliable != 0
        cars = cars.where(oldtimer: oldtimer) if oldtimer.present? and oldtimer != 0
        cars = cars.where(has_warranty: has_warranty) if has_warranty.present? and has_warranty != 0
        cars = cars.where(ac: ac) if ac.present? and ac != 0
        cars = cars.where(digital_ac: digital_ac) if digital_ac.present? and digital_ac != 0
        cars = cars.where(keyless_go: keyless_go) if keyless_go.present? and keyless_go != 0
        cars = cars.where(headup: headup) if headup.present? and headup != 0
        cars = cars.where(navigation: navigation) if navigation.present? and navigation != 0
        cars = cars.where(cd_player: cd_player) if cd_player.present? and cd_player != 0
        cars = cars.where(mp3_player: mp3_player) if mp3_player.present? and mp3_player != 0
        cars = cars.where(dab: dab) if dab.present? and dab != 0
        cars = cars.where(abs: abs) if abs.present? and abs != 0
        cars = cars.where(electric_parking_brake: electric_parking_brake) if electric_parking_brake.present? and electric_parking_brake != 0
        cars = cars.where(fourwheel: fourwheel) if fourwheel.present? and fourwheel != 0
        cars = cars.where(alarm: alarm) if alarm.present? and alarm != 0
        cars = cars.where(xenon: xenon) if xenon.present? and xenon != 0
        cars = cars.where(led: led) if led.present? and led != 0
        cars = cars.where(automatic_lights: automatic_lights) if automatic_lights.present? and automatic_lights != 0
        cars = cars.where(emergency_brake: emergency_brake) if emergency_brake.present? and emergency_brake != 0
        cars = cars.where(cruise_control: cruise_control) if cruise_control.present? and cruise_control != 0
        cars = cars.where(hill_assist: hill_assist) if hill_assist.present? and hill_assist != 0
        cars = cars.where(pdc: pdc) if pdc.present? and pdc != 0
        cars = cars.where(rear_camera: rear_camera) if rear_camera.present? and rear_camera != 0
        cars = cars.where(service_book: service_book) if service_book.present? and service_book != 0
        cars = cars.where(slovenian: slovenian) if slovenian.present? and slovenian != 0
        cars = cars.where(garaged: garaged) if garaged.present? and garaged != 0
        cars = cars.where(cash_discount: cash_discount) if cash_discount.present? and cash_discount != 0




        return cars
    end 
end
