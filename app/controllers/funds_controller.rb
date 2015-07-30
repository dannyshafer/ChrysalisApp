class FundsController < ApplicationController

  def create
    @fund = create_fund(params[:symbol])
    render "funds/show"
  end

  def show
    p "made it to the route"
    @fund = current_user.funds.find(params[:id])
    p @fund
    ("funds/show").to_json
  end

  def index
    @funds = current_user.funds
    render "funds/index"
  end

end
