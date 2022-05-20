# require 'rails_helper'
#
# describe 'Merchants Search' do
#   it 'find one MERCHANT based on search criteria' do
#     merchants = create_list(:merchant, 5)
#     search_params = {name: merchants.first.name}
#
#     get "/api/v1/merchants/find?", params: search_params
#
#     json = JSON.parse(response.body, symbolize_names: true)
#
#     expect(response).to be_successful
#     expect(json.keys.first).to eq(:data)
#
#     #json[:data].first[:attributes][:name]
#
#     expect(merchant[:attributes]).to have_key(:name)
#     expect(json[:data].first[:attributes][:name]).to be_a(String)
#     expect(json[:data].first[:attributes][:name]).to eq()
#   end
# end
