class ProvidersController < ApplicationController
  def index
  	  	 if params.has_key?(:filter)
	  	@things = Providers.find_all_by_provider_type(params[:filter])
	  	# @current_provider = Providers.find_by_provider_type(params[:filter])
	else
  		@things = Providers.all
  	end
  	@count = 0
  	@title = "Service Providers"
  end
end
