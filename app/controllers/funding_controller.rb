class FundingController < ApplicationController
  def index

  	if params.has_key?(:filter)
	  	@funding = Funding.find_all_by_funding_type(params[:filter])
	  	@current_funding = Funding.find_by_funding_type(params[:filter]).funding_type
	else
  		@funding = Funding.all.asc
  	end

  def show

  end
  end
end
