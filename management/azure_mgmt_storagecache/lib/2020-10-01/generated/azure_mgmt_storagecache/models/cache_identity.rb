# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # Cache identity properties.
    #
    class CacheIdentity

      include MsRestAzure

      # @return [String] The principal id of the cache.
      attr_accessor :principal_id

      # @return [String] The tenant id associated with the cache.
      attr_accessor :tenant_id

      # @return [CacheIdentityType] The type of identity used for the cache.
      # Possible values include: 'SystemAssigned', 'None'
      attr_accessor :type


      #
      # Mapper for CacheIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CacheIdentity',
          type: {
            name: 'Composite',
            class_name: 'CacheIdentity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'CacheIdentityType'
                }
              }
            }
          }
        }
      end
    end
  end
end
