# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a virtual machine scale set network profile's IP configuration.
    #
    class VirtualMachineScaleSetIPConfiguration < SubResource

      include MsRestAzure

      # @return [String] The IP configuration name.
      attr_accessor :name

      # @return [ApiEntityReference] The subnet.
      attr_accessor :subnet

      # @return [Array<SubResource>] The application gateway backend address
      # pools.
      attr_accessor :application_gateway_backend_address_pools

      # @return [Array<SubResource>] The load balancer backend address pools.
      attr_accessor :load_balancer_backend_address_pools

      # @return [Array<SubResource>] The load balancer inbound nat pools.
      attr_accessor :load_balancer_inbound_nat_pools


      #
      # Mapper for VirtualMachineScaleSetIPConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetIPConfiguration',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                required: true,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'ApiEntityReference'
                }
              },
              application_gateway_backend_address_pools: {
                required: false,
                serialized_name: 'properties.applicationGatewayBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              load_balancer_backend_address_pools: {
                required: false,
                serialized_name: 'properties.loadBalancerBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              load_balancer_inbound_nat_pools: {
                required: false,
                serialized_name: 'properties.loadBalancerInboundNatPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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
