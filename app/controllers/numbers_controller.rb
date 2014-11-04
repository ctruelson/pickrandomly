class NumbersController < ApplicationController
  # GET /number/upto/30
  def upto
    # Should we include 0?
    @result = rand(params[:max].to_i + 1) # +1 to include the max number
    render template: 'number/number'
  end

  # GET /number/between/15/30
  def between
    # Should we be including the min and max? rand() includes them
    @result = rand(params[:min].to_i..params[:max].to_i)
    render template: 'number/number'
  end
end
