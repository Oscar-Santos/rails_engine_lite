class Api::V1::MerchantsController < ApplicationController
  def index
    merchants = Merchant.all
    render(json: MerchantSerializer.new(merchants), status: :ok)
  end

  def show
    merchant = Merchant.find(params[:id])
    render(json: MerchantSerializer.new(merchant), status: :ok)
  end
end
