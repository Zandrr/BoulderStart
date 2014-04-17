class FundingController < ApplicationController
  def index

  	if params.has_key?(:filter)
	  	@things = Funding.find_all_by_funding_type(params[:filter])
	 else
  		@things = Funding.all.asc
      @count = 0
    end
    @title = "Funding"
  end


  def show

  end
end
