# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The 'Data 0' network interface card settings.
    #
    class NetworkInterfaceData0Settings

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The controller 0's IPv4 address.
      attr_accessor :controller_zero_ip

      # @return [String] The controller 1's IPv4 address.
      attr_accessor :controller_one_ip


      #
      # Mapper for NetworkInterfaceData0Settings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterfaceData0Settings',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceData0Settings',
            model_properties: {
              controller_zero_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'controllerZeroIp',
                type: {
                  name: 'String'
                }
              },
              controller_one_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'controllerOneIp',
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
