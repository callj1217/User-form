class CarsController < ApplicationController

		def index
			@cars = Car.all
		end

		def show
			@car = Car.find(params[:id])
		end


		def new
			@car = Car.new
		end



		def create
			@car = Car.new(car_params)
			if @car.save
				redirect_to cars_path
			end
		end
		def edit
			@car = Car.find (params[:id]) 
		end


		def update
			@car = Car.find(params[:id]) 
			if @car.update_attributes(car_params)
				redirect_to cars_path(@car)
			end
		end

		def destroy
			@car = Car.find(params[:id])
			@car.destroy
			redirect_to cars_path
		end


private

		def car_params 
			params.required(:car).permit(:brand, :model, :num_wheels, :is_eletric, :engine_size, :date_purchased, :user_id)
		end

	end