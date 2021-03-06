# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # CDN endpoint is the entity within a CDN profile containing configuration
    # information such as origin, protocol, content caching and delivery
    # behavior. The AzureFrontDoor endpoint uses the URL format
    # <endpointname>.azureedge.net.
    #
    class AFDEndpoint < TrackedResource

      include MsRestAzure

      # @return [Integer] Send and receive timeout on forwarding request to the
      # origin. When timeout is reached, the request fails and returns.
      attr_accessor :origin_response_timeout_seconds

      # @return [EnabledState] Whether to enable use of this rule. Permitted
      # values are 'Enabled' or 'Disabled'. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :enabled_state

      # @return [AfdProvisioningState] Provisioning status. Possible values
      # include: 'Succeeded', 'Failed', 'Updating', 'Deleting', 'Creating'
      attr_accessor :provisioning_state

      # @return [DeploymentStatus] Possible values include: 'NotStarted',
      # 'InProgress', 'Succeeded', 'Failed'
      attr_accessor :deployment_status

      # @return [String] The host name of the endpoint structured as
      # {endpointName}.{DNSZone}, e.g. contoso.azureedge.net
      attr_accessor :host_name


      #
      # Mapper for AFDEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AFDEndpoint',
          type: {
            name: 'Composite',
            class_name: 'AFDEndpoint',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              origin_response_timeout_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originResponseTimeoutSeconds',
                constraints: {
                  InclusiveMinimum: 16
                },
                type: {
                  name: 'Number'
                }
              },
              enabled_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabledState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              deployment_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deploymentStatus',
                type: {
                  name: 'String'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
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
