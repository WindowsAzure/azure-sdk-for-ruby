# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # Workflow resource.
    #
    class Workflow < Resource

      include MsRestAzure

      # @return [String] last step name
      attr_accessor :last_step_name

      # @return [Enum] workflow status. Possible values include: 'active',
      # 'expired', 'succeeded', 'aborted', 'failed'
      attr_accessor :status

      # @return [Enum] operation direction. Possible values include: 'do',
      # 'undo', 'cancel'
      attr_accessor :operation

      # @return [String] workflow steps
      attr_accessor :steps

      # @return [String] workflow last operation identifier.
      attr_accessor :last_operation_id


      #
      # Mapper for Workflow class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Workflow',
          type: {
            name: 'Composite',
            class_name: 'Workflow',
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
              last_step_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastStepName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.operation',
                type: {
                  name: 'String'
                }
              },
              steps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.steps',
                type: {
                  name: 'String'
                }
              },
              last_operation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastOperationId',
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
