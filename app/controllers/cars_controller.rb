class CarsController < ApplicationController

	before_action :authorize, :except => [:index, :show, :new, :create]

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
			flash[:info] = "Car saved"
			redirect_to cars_path
		else
			flash.now[:danger] = @car.errors.full_messages.to_sentence
			render :new
		end
	end

	def edit 
		@car = Car.find(params[:id])
	end

	def update 
		@car = Car.find(params[:id])

		if @car.update(car_params)
			redirect_to cars_path
		else
			render :edit
		end
	end

	def destroy
		@car = Car.find(params[:id])

		@car.destroy

		redirect_to cars_path
	end

		private

	def car_params
		params.require(:car).permit(:owner, :make, :model, :year, :color, :odometer)
	end

end
