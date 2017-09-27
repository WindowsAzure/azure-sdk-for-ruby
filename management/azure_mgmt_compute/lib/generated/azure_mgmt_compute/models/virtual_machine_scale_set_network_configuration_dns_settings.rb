# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machines scale sets network configuration's DNS
    # settings.
    #
    class VirtualMachineScaleSetNetworkConfigurationDnsSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] List of DNS servers IP addresses
      attr_accessor :dns_servers


      #
      # Mapper for VirtualMachineScaleSetNetworkConfigurationDnsSettings class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetNetworkConfigurationDnsSettings',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetNetworkConfigurationDnsSettings',
            model_properties: {
              dns_servers: {
                required: false,
                serialized_name: 'dnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
