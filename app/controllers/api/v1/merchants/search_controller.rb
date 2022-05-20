class Api::V1::Merchants::SearchController < ApplicationController
  def index
    merchants = Merchant.where(name: params[:name])
    render json: MerchantSerializer.new(merchants)
  end
end
