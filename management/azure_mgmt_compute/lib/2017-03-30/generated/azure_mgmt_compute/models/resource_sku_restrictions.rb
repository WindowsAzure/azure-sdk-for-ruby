# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Describes scaling information of a SKU.
    #
    class ResourceSkuRestrictions

      include MsRestAzure

      include MsRest::JSONable
      # @return [ResourceSkuRestrictionsType] The type of restrictions.
      # Possible values include: 'Location'
      attr_accessor :type

      # @return [Array<String>] The value of restrictions. If the restriction
      # type is set to location. This would be different locations where the
      # SKU is restricted.
      attr_accessor :values

      # @return [ResourceSkuRestrictionsReasonCode] The reason for restriction.
      # Possible values include: 'QuotaId', 'NotAvailableForSubscription'
      attr_accessor :reason_code


      #
      # Mapper for ResourceSkuRestrictions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSkuRestrictions',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuRestrictions',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceSkuRestrictionsType'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              reason_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reasonCode',
                type: {
                  name: 'Enum',
                  module: 'ResourceSkuRestrictionsReasonCode'
                }
              }
            }
          }
        }
      end
    end
  end
end
