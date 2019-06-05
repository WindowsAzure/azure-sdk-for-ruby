# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_05_01_preview
  module Models
    #
    # PublicIPAddress resource
    #
    class PublicIpAddress < Resource

      include MsRestAzure

      # @return [IpAllocationMethod] Gets or sets PublicIP allocation method
      # (Static/Dynamic). Possible values include: 'Static', 'Dynamic'
      attr_accessor :public_ipallocation_method

      # @return [SubResource] Gets a reference to the network interface IP
      # configurations using this public IP address
      attr_accessor :ip_configuration

      # @return [PublicIpAddressDnsSettings] Gets or sets FQDN of the DNS
      # record associated with the public IP address
      attr_accessor :dns_settings

      # @return [String] Gets the assigned public IP address
      attr_accessor :ip_address

      # @return [Integer] Gets or sets the idle timeout of the public IP
      # address
      attr_accessor :idle_timeout_in_minutes

      # @return [String] Gets or sets resource guid property of the PublicIP
      # resource
      attr_accessor :resource_guid

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for PublicIpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PublicIpAddress',
          type: {
            name: 'Composite',
            class_name: 'PublicIpAddress',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              public_ipallocation_method: {
                required: true,
                serialized_name: 'properties.publicIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              ip_configuration: {
                required: false,
                serialized_name: 'properties.ipConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              dns_settings: {
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'PublicIpAddressDnsSettings'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'String'
                }
              },
              idle_timeout_in_minutes: {
                required: false,
                serialized_name: 'properties.idleTimeoutInMinutes',
                type: {
                  name: 'Number'
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
