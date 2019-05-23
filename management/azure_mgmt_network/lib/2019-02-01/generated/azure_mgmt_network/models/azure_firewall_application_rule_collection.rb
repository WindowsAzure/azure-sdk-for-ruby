# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_02_01
  module Models
    #
    # Application rule collection resource
    #
    class AzureFirewallApplicationRuleCollection < SubResource

      include MsRestAzure

      # @return [Integer] Priority of the application rule collection resource.
      attr_accessor :priority

      # @return [AzureFirewallRCAction] The action type of a rule collection
      attr_accessor :action

      # @return [Array<AzureFirewallApplicationRule>] Collection of rules used
      # by a application rule collection.
      attr_accessor :rules

      # @return [ProvisioningState] The provisioning state of the resource.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for AzureFirewallApplicationRuleCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallApplicationRuleCollection',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallApplicationRuleCollection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                constraints: {
                  InclusiveMaximum: 65000,
                  InclusiveMinimum: 100
                },
                type: {
                  name: 'Number'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.action',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFirewallRCAction'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallApplicationRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallApplicationRule'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
