# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_04_01
  module Models
    #
    # An activity log alert resource.
    #
    class ActivityLogAlertResource < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] A list of resourceIds that will be used as
      # prefixes. The alert will only apply to activityLogs with resourceIds
      # that fall under one of these prefixes. This list must include at least
      # one item.
      attr_accessor :scopes

      # @return [Boolean] Indicates whether this activity log alert is enabled.
      # If an activity log alert is not enabled, then none of its actions will
      # be activated. Default value: true .
      attr_accessor :enabled

      # @return [ActivityLogAlertAllOfCondition] The condition that will cause
      # this alert to activate.
      attr_accessor :condition

      # @return [ActivityLogAlertActionList] The actions that will activate
      # when the condition is met.
      attr_accessor :actions

      # @return [String] A description of this activity log alert.
      attr_accessor :description


      #
      # Mapper for ActivityLogAlertResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActivityLogAlertResource',
          type: {
            name: 'Composite',
            class_name: 'ActivityLogAlertResource',
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
              scopes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.scopes',
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
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              condition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.condition',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityLogAlertAllOfCondition'
                }
              },
              actions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityLogAlertActionList'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
