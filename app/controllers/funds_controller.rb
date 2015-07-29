class FundsController < ApplicationController

  def create
    @fund = create_fund(params[:symbol])
    render "funds/show"
  end

  def show
    @fund = current_user.funds.find(params[:id])
    render "funds/show"
  end

  def index
    @funds = current_user.funds
    render "funds/index"
  end

end