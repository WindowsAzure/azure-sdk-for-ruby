# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # Details related to the IPv4 address configuration.
    #
    class NicIPv4

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The IPv4 address of the network adapter.
      attr_accessor :ipv4address

      # @return [String] The IPv4 netmask of the network adapter.
      attr_accessor :ipv4netmask

      # @return [String] The IPv4 gateway of the network adapter.
      attr_accessor :ipv4gateway

      # @return [String] The IPv4 address of Controller0.
      attr_accessor :controller0ipv4address

      # @return [String] The IPv4 address of Controller1.
      attr_accessor :controller1ipv4address


      #
      # Mapper for NicIPv4 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NicIPv4',
          type: {
            name: 'Composite',
            class_name: 'NicIPv4',
            model_properties: {
              ipv4address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipv4Address',
                type: {
                  name: 'String'
                }
              },
              ipv4netmask: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipv4Netmask',
                type: {
                  name: 'String'
                }
              },
              ipv4gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipv4Gateway',
                type: {
                  name: 'String'
                }
              },
              controller0ipv4address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'controller0Ipv4Address',
                type: {
                  name: 'String'
                }
              },
              controller1ipv4address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'controller1Ipv4Address',
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
