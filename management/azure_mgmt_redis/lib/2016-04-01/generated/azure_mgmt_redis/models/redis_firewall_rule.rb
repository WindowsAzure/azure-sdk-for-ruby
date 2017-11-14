# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2016_04_01
  module Models
    #
    # A firewall rule on a redis cache has a name, and describes a contiguous
    # range of IP addresses permitted to connect
    #
    class RedisFirewallRule

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] resource ID (of the firewall rule)
      attr_accessor :id

      # @return [String] name of the firewall rule
      attr_accessor :name

      # @return [String] type (of the firewall rule resource =
      # 'Microsoft.Cache/redis/firewallRule')
      attr_accessor :type

      # @return [String] lowest IP address included in the range
      attr_accessor :start_ip

      # @return [String] highest IP address included in the range
      attr_accessor :end_ip


      #
      # Mapper for RedisFirewallRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisFirewallRule',
          type: {
            name: 'Composite',
            class_name: 'RedisFirewallRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              start_ip: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.startIP',
                type: {
                  name: 'String'
                }
              },
              end_ip: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.endIP',
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
