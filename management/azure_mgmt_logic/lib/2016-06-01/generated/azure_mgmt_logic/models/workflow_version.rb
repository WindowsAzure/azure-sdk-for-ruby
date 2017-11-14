# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The workflow version.
    #
    class WorkflowVersion < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Gets the created time.
      attr_accessor :created_time

      # @return [DateTime] Gets the changed time.
      attr_accessor :changed_time

      # @return [WorkflowState] The state. Possible values include:
      # 'NotSpecified', 'Completed', 'Enabled', 'Disabled', 'Deleted',
      # 'Suspended'
      attr_accessor :state

      # @return [String] Gets the version.
      attr_accessor :version

      # @return [String] Gets the access endpoint.
      attr_accessor :access_endpoint

      # @return [Sku] The sku.
      attr_accessor :sku

      # @return [ResourceReference] The integration account.
      attr_accessor :integration_account

      # @return The definition.
      attr_accessor :definition

      # @return [Hash{String => WorkflowParameter}] The parameters.
      attr_accessor :parameters


      #
      # Mapper for WorkflowVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowVersion',
          type: {
            name: 'Composite',
            class_name: 'WorkflowVersion',
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
                required: false,
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
              created_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'WorkflowState'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              access_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accessEndpoint',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              integration_account: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.integrationAccount',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              definition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.definition',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WorkflowParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkflowParameter'
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
