# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_05_01
  module Models
    #
    # Work item configuration associated with an application insights resource.
    #
    class WorkItemConfiguration

      include MsRestAzure

      # @return [String] Connector identifier where work item is created
      attr_accessor :connector_id

      # @return [String] Configuration friendly name
      attr_accessor :config_display_name

      # @return [Boolean] Boolean value indicating whether configuration is
      # default
      attr_accessor :is_default

      # @return [String] Unique Id for work item
      attr_accessor :id

      # @return [String] Serialized JSON object for detailed properties
      attr_accessor :config_properties


      #
      # Mapper for WorkItemConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkItemConfiguration',
          type: {
            name: 'Composite',
            class_name: 'WorkItemConfiguration',
            model_properties: {
              connector_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConnectorId',
                type: {
                  name: 'String'
                }
              },
              config_display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigDisplayName',
                type: {
                  name: 'String'
                }
              },
              is_default: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsDefault',
                type: {
                  name: 'Boolean'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'String'
                }
              },
              config_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigProperties',
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
