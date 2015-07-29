class FundsController < ApplicationController

require 'nokogiri'
require 'open-uri'

# post '/mutf_summary' do
#   create_fund(params[:fund])

#     erb :'funds/summary'
# end

# delete '/funds/:fund_id' do
#   fund = Fund.find(params[:fund_id])
#   fund.destroy

#   if request.xhr?

#   else
#     redirect '/'
#   end
# end

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