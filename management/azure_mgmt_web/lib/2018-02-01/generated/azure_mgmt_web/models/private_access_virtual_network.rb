# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Description of a Virtual Network that is useable for private site access.
    #
    class PrivateAccessVirtualNetwork

      include MsRestAzure

      # @return [String] The name of the Virtual Network.
      attr_accessor :name

      # @return [Integer] The key (ID) of the Virtual Network.
      attr_accessor :key

      # @return [String] The ARM uri of the Virtual Network
      attr_accessor :resource_id

      # @return [Array<PrivateAccessSubnet>] A List of subnets that access is
      # allowed to on this Virtual Network. An empty array (but not null) is
      # interpreted to mean that all subnets are allowed within this Virtual
      # Network.
      attr_accessor :subnets


      #
      # Mapper for PrivateAccessVirtualNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateAccessVirtualNetwork',
          type: {
            name: 'Composite',
            class_name: 'PrivateAccessVirtualNetwork',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'Number'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              subnets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateAccessSubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateAccessSubnet'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
