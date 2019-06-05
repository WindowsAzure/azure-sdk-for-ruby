# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_12_01
  module Models
    #
    # Frontend IP configuration of an application gateway.
    #
    class ApplicationGatewayFrontendIPConfiguration < SubResource

      include MsRestAzure

      # @return [String] PrivateIPAddress of the network interface IP
      # Configuration.
      attr_accessor :private_ipaddress

      # @return [IPAllocationMethod] PrivateIP allocation method. Possible
      # values are: 'Static' and 'Dynamic'. Possible values include: 'Static',
      # 'Dynamic'
      attr_accessor :private_ipallocation_method

      # @return [SubResource] Reference of the subnet resource.
      attr_accessor :subnet

      # @return [SubResource] Reference of the PublicIP resource.
      attr_accessor :public_ipaddress

      # @return [String] Provisioning state of the public IP resource. Possible
      # values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayFrontendIPConfiguration class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayFrontendIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFrontendIPConfiguration',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              private_ipaddress: {
                required: false,
                serialized_name: 'properties.privateIPAddress',
                type: {
                  name: 'String'
                }
              },
              private_ipallocation_method: {
                required: false,
                serialized_name: 'properties.privateIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              public_ipaddress: {
                required: false,
                serialized_name: 'properties.publicIPAddress',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
