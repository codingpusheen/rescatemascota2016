class PublishController < ApplicationController

	def new
		@pet = Pet.new
	end


	def index
		@pets = Pet.all

		# Loop en BBDD
		@pets.each do |v|
			logger.info v.name
		end

	end

	def create
		@pet = Pet.new(pet_params)

		if @pet.save
			redirect_to home_index_path
		else
			render 'new'
		end 

	end

	private
		def pet_params
			params.require(:pet).permit(:name, :age, :status, :specie, :genre, :vaccine, :antiparasitic, :health)
		end

end
