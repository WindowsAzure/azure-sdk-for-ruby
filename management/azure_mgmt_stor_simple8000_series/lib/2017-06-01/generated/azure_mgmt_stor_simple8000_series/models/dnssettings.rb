# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The DNS(Domain Name Server) settings of a device.
    #
    class DNSSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The primary IPv4 DNS server for the device
      attr_accessor :primary_dns_server

      # @return [String] The primary IPv6 DNS server for the device
      attr_accessor :primary_ipv6dns_server

      # @return [Array<String>] The secondary IPv4 DNS server for the device
      attr_accessor :secondary_dns_servers

      # @return [Array<String>] The secondary IPv6 DNS server for the device
      attr_accessor :secondary_ipv6dns_servers


      #
      # Mapper for DNSSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DNSSettings',
          type: {
            name: 'Composite',
            class_name: 'DNSSettings',
            model_properties: {
              primary_dns_server: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryDnsServer',
                type: {
                  name: 'String'
                }
              },
              primary_ipv6dns_server: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryIpv6DnsServer',
                type: {
                  name: 'String'
                }
              },
              secondary_dns_servers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryDnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              secondary_ipv6dns_servers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryIpv6DnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
