class MerchantSerializer
  include JSONAPI::Serializer
  attributes :name
  # def self.format_index(merchants)
  #   {
  #     'data': merchants.map do |merchant|
  #               {
  #                 'id': merchant.id,
  #                 'type': 'merchant',
  #                 'attributes': {
  #                   'name': merchant.name
  #                 }
  #               }
  #             end
  #   }
  # end

  # def self.format_show(merchant)
  #   # {
  #   #     "type": "object",
  #   #     "properties": {
  #   #         "data": {
  #   #             "type": "object",
  #   #             "properties": {
  #   #                 "id": merchant.id,
  #   #                 "type": { "type": "string" },
  #   #                 "attributes": {
  #   #                     "type": "object",
  #   #                     "properties": {
  #   #                         "name": merchant.name,
  #   #                     },
  #   #                     "required": ["name"]
  #   #                 }
  #   #             },
  #   #             "required": ["id", "type", "attributes"]
  #   #         }
  #   #     },
  #   #     "required": ['data']
  #   # }
  #
  # end
end
