require 'rails_helper'

RSpec.describe 'Merchant Items API' do
  it 'get all items for a given merchant ID' do
    merchant1 = create(:merchant)
    items = create_list(:item, 3, merchant_id: merchant1.id)

    get "/api/v1/merchant/items/#{merchant1.id}"

    expect(response).to be_successful
  end
end
