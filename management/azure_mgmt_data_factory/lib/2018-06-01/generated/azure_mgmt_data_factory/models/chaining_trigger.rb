# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Trigger that allows the referenced pipeline to depend on other pipeline
    # runs based on runDimension Name/Value pairs. Upstream pipelines should
    # declare the same runDimension Name and their runs should have the values
    # for those runDimensions. The referenced pipeline run would be triggered
    # if the values for the runDimension match for all upstream pipeline runs.
    #
    class ChainingTrigger < Trigger

      include MsRestAzure


      def initialize
        @type = "ChainingTrigger"
      end

      attr_accessor :type

      # @return [TriggerPipelineReference] Pipeline for which runs are created
      # when all upstream pipelines complete successfully.
      attr_accessor :pipeline

      # @return [Array<PipelineReference>] Upstream Pipelines.
      attr_accessor :depends_on

      # @return [String] Run Dimension property that needs to be emitted by
      # upstream pipelines.
      attr_accessor :run_dimension


      #
      # Mapper for ChainingTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChainingTrigger',
          type: {
            name: 'Composite',
            class_name: 'ChainingTrigger',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              runtime_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'runtimeState',
                type: {
                  name: 'String'
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
              pipeline: {
                client_side_validation: true,
                required: true,
                serialized_name: 'pipeline',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'TriggerPipelineReference'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PipelineReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PipelineReference'
                      }
                  }
                }
              },
              run_dimension: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.runDimension',
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
