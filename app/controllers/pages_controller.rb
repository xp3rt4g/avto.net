class PagesController < ApplicationController
    def index
        @manufacturers = Manufacturer.all
        @models = []
        if params[:manufacturer].present?
        @models = Manufacturer.find(params[:manufacturer]).models
        end
        if request.xhr?
        respond_to do |format|
            format.json {
            render json: {models: @models}
            }
        end
        end
    end

    def search

    end

    def results
        @cars = Cars.all

        @cars = @cars.where(model_id: model_id) if model_id.present?
    end
end
