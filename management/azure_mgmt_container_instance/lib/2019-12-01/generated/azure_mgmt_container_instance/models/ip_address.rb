# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2019_12_01
  module Models
    #
    # IP address for the container group.
    #
    class IpAddress

      include MsRestAzure

      # @return [Array<Port>] The list of ports exposed on the container group.
      attr_accessor :ports

      # @return [ContainerGroupIpAddressType] Specifies if the IP is exposed to
      # the public internet or private VNET. Possible values include: 'Public',
      # 'Private'
      attr_accessor :type

      # @return [String] The IP exposed to the public internet.
      attr_accessor :ip

      # @return [String] The Dns name label for the IP.
      attr_accessor :dns_name_label

      # @return [String] The FQDN for the IP.
      attr_accessor :fqdn


      #
      # Mapper for IpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IpAddress',
          type: {
            name: 'Composite',
            class_name: 'IpAddress',
            model_properties: {
              ports: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ports',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Port'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ip',
                type: {
                  name: 'String'
                }
              },
              dns_name_label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dnsNameLabel',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'fqdn',
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
