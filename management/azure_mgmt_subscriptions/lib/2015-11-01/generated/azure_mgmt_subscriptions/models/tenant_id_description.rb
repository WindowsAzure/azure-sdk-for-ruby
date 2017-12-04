# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Subscriptions::Mgmt::V2015_11_01
  module Models
    #
    # Tenant Id information
    #
    class TenantIdDescription

      include MsRestAzure

      # @return [String] Gets or sets Id
      attr_accessor :id

      # @return [String] Gets or sets tenantId
      attr_accessor :tenant_id


      #
      # Mapper for TenantIdDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TenantIdDescription',
          type: {
            name: 'Composite',
            class_name: 'TenantIdDescription',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
