class HomeController < ApplicationController
  	def index
  		@lostpets = Pet.status("1") #shows lost pets on the first group
  		@rescuedpets = Pet.status("2") #shows rescued pets ready for adoption on the second group
  		@adoptedpets = Pet.status("3") #shows adopted pets
  	end

	def who
  	end

  	def friends
  	end
end
