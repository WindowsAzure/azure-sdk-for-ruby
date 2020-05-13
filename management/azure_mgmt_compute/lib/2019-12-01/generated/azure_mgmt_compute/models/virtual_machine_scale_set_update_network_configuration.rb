# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Describes a virtual machine scale set network profile's network
    # configurations.
    #
    class VirtualMachineScaleSetUpdateNetworkConfiguration < SubResource

      include MsRestAzure

      # @return [String] The network configuration name.
      attr_accessor :name

      # @return [Boolean] Whether this is a primary NIC on a virtual machine.
      attr_accessor :primary

      # @return [Boolean] Specifies whether the network interface is
      # accelerated networking-enabled.
      attr_accessor :enable_accelerated_networking

      # @return [SubResource] The network security group.
      attr_accessor :network_security_group

      # @return [VirtualMachineScaleSetNetworkConfigurationDnsSettings] The dns
      # settings to be applied on the network interfaces.
      attr_accessor :dns_settings

      # @return [Array<VirtualMachineScaleSetUpdateIPConfiguration>] The
      # virtual machine scale set IP Configuration.
      attr_accessor :ip_configurations

      # @return [Boolean] Whether IP forwarding enabled on this NIC.
      attr_accessor :enable_ipforwarding


      #
      # Mapper for VirtualMachineScaleSetUpdateNetworkConfiguration class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdateNetworkConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdateNetworkConfiguration',
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
              primary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              enable_accelerated_networking: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAcceleratedNetworking',
                type: {
                  name: 'Boolean'
                }
              },
              network_security_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              dns_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetNetworkConfigurationDnsSettings'
                }
              },
              ip_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetUpdateIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetUpdateIPConfiguration'
                      }
                  }
                }
              },
              enable_ipforwarding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableIPForwarding',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
