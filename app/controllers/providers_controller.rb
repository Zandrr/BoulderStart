class ProvidersController < ApplicationController
  def index
  	  	 if params.has_key?(:filter)
	  	@providers = Providers.find_all_by_provider_type(params[:filter])
	  	# @current_provider = Providers.find_by_provider_type(params[:filter])
	else
  		@providers = Providers.all
  	end
  end
end
