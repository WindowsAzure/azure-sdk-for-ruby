# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Operation Result.
    #
    class OperationResultContract

      include MsRestAzure

      # @return [String] Operation result identifier.
      attr_accessor :id

      # @return [AsyncOperationStatus] Status of an async operation. Possible
      # values include: 'Started', 'InProgress', 'Succeeded', 'Failed'
      attr_accessor :status

      # @return [DateTime] Start time of an async operation. The date conforms
      # to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO
      # 8601 standard.
      #
      attr_accessor :started

      # @return [DateTime] Last update time of an async operation. The date
      # conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified
      # by the ISO 8601 standard.
      #
      attr_accessor :updated

      # @return [String] Optional result info.
      attr_accessor :result_info

      # @return [ErrorResponseBody] Error Body Contract
      attr_accessor :error

      # @return [Array<OperationResultLogItemContract>] This property if only
      # provided as part of the TenantConfiguration_Validate operation. It
      # contains the log the entities which will be updated/created/deleted as
      # part of the TenantConfiguration_Deploy operation.
      attr_accessor :action_log


      #
      # Mapper for OperationResultContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResultContract',
          type: {
            name: 'Composite',
            class_name: 'OperationResultContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'AsyncOperationStatus'
                }
              },
              started: {
                client_side_validation: true,
                required: false,
                serialized_name: 'started',
                type: {
                  name: 'DateTime'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updated',
                type: {
                  name: 'DateTime'
                }
              },
              result_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resultInfo',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponseBody'
                }
              },
              action_log: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'actionLog',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationResultLogItemContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationResultLogItemContract'
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
