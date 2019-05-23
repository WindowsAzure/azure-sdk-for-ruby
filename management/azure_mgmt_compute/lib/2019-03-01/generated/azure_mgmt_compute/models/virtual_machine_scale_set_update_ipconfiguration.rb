# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Describes a virtual machine scale set network profile's IP configuration.
    #
    class VirtualMachineScaleSetUpdateIPConfiguration < SubResource

      include MsRestAzure

      # @return [String] The IP configuration name.
      attr_accessor :name

      # @return [ApiEntityReference] The subnet.
      attr_accessor :subnet

      # @return [Boolean] Specifies the primary IP Configuration in case the
      # network interface has more than one IP Configuration.
      attr_accessor :primary

      # @return [VirtualMachineScaleSetUpdatePublicIPAddressConfiguration] The
      # publicIPAddressConfiguration.
      attr_accessor :public_ipaddress_configuration

      # @return [IPVersion] Available from Api-Version 2017-03-30 onwards, it
      # represents whether the specific ipconfiguration is IPv4 or IPv6.
      # Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
      # Possible values include: 'IPv4', 'IPv6'
      attr_accessor :private_ipaddress_version

      # @return [Array<SubResource>] The application gateway backend address
      # pools.
      attr_accessor :application_gateway_backend_address_pools

      # @return [Array<SubResource>] Specifies an array of references to
      # application security group.
      attr_accessor :application_security_groups

      # @return [Array<SubResource>] The load balancer backend address pools.
      attr_accessor :load_balancer_backend_address_pools

      # @return [Array<SubResource>] The load balancer inbound nat pools.
      attr_accessor :load_balancer_inbound_nat_pools


      #
      # Mapper for VirtualMachineScaleSetUpdateIPConfiguration class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdateIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdateIPConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'ApiEntityReference'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              public_ipaddress_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddressConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdatePublicIPAddressConfiguration'
                }
              },
              private_ipaddress_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAddressVersion',
                type: {
                  name: 'String'
                }
              },
              application_gateway_backend_address_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationGatewayBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              application_security_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationSecurityGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerInboundNatPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
