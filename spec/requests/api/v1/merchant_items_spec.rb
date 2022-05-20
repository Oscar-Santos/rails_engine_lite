require 'rails_helper'

RSpec.describe 'Merchant Items API' do
  describe 'Items Merchant' do
    it 'get all items for a given merchant ID' do

      merchant1 = create(:merchant)
      items = create_list(:item, 3, merchant_id: merchant1.id)

      get "/api/v1/merchants/#{merchant1.id}/items"

      merchant_items = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(merchant_items[:data].count).to eq(3)

      merchant_items[:data].each do |merchant_item|
        expect(merchant_item).to have_key(:id)
        expect(merchant_item[:id]).to be_a(String)

        expect(merchant_item).to have_key(:attributes)
        expect(merchant_item[:attributes]).to be_a(Hash)

        expect(merchant_item[:attributes]).to have_key(:name)
        expect(merchant_item[:attributes][:name]).to be_a(String)

        expect(merchant_item[:attributes]).to have_key(:description)
        expect(merchant_item[:attributes][:description]).to be_a(String)

        expect(merchant_item[:attributes]).to have_key(:unit_price)
        expect(merchant_item[:attributes][:unit_price]).to be_a(Float)

        expect(merchant_item[:attributes]).to have_key(:merchant_id)
        expect(merchant_item[:attributes][:merchant_id]).to be_a(Integer)
        expect(merchant_item[:attributes][:merchant_id]).to eq(merchant1.id)
      end
    end
  end

  describe 'getting an Items Merchant' do
    it 'can get the merchant data for a given Item ID' do

      merchant_1 = create(:merchant)
      merchant_2 = create(:merchant)
      item = create(:item, merchant_id: merchant_1.id)

      get "/api/v1/items/#{item.id}/merchant"

      merchant = JSON.parse(response.body, symbolize_names: true)
      expect(merchant[:data][:id].to_i).to eq(merchant_1.id)
      expect(merchant[:data][:attributes][:name]).to eq(merchant_1.name)
      expect(item.merchant_id).to eq(merchant[:data][:id].to_i)
    end
  end
end
