class SearchController < ApplicationController
  def index
  	@pets = Pet.all
  end
end
