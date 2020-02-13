# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Execute data flow activity.
    #
    class ExecuteDataFlowActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "ExecuteDataFlow"
      end

      attr_accessor :type

      # @return [DataFlowReference] Data flow reference.
      attr_accessor :data_flow

      # @return [DataFlowStagingInfo] Staging info for execute data flow
      # activity.
      attr_accessor :staging

      # @return [IntegrationRuntimeReference] The integration runtime
      # reference.
      attr_accessor :integration_runtime

      # @return [ExecuteDataFlowActivityTypePropertiesCompute] Compute
      # properties for data flow activity.
      attr_accessor :compute


      #
      # Mapper for ExecuteDataFlowActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExecuteDataFlow',
          type: {
            name: 'Composite',
            class_name: 'ExecuteDataFlowActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
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
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              data_flow: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.dataFlow',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'DataFlowReference'
                }
              },
              staging: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.staging',
                type: {
                  name: 'Composite',
                  class_name: 'DataFlowStagingInfo'
                }
              },
              integration_runtime: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.integrationRuntime',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
                }
              },
              compute: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.compute',
                type: {
                  name: 'Composite',
                  class_name: 'ExecuteDataFlowActivityTypePropertiesCompute'
                }
              }
            }
          }
        }
      end
    end
  end
end
