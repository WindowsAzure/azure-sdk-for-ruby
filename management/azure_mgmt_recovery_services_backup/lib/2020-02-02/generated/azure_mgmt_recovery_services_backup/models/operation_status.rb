# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2020_02_02
  module Models
    #
    # Operation status.
    #
    class OperationStatus

      include MsRestAzure

      # @return [String] ID of the operation.
      attr_accessor :id

      # @return [String] Name of the operation.
      attr_accessor :name

      # @return [OperationStatusValues] Operation status. Possible values
      # include: 'Invalid', 'InProgress', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :status

      # @return [DateTime] Operation start time. Format: ISO-8601.
      attr_accessor :start_time

      # @return [DateTime] Operation end time. Format: ISO-8601.
      attr_accessor :end_time

      # @return [OperationStatusError] Error information related to this
      # operation.
      attr_accessor :error


      #
      # Mapper for OperationStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationStatus',
          type: {
            name: 'Composite',
            class_name: 'OperationStatus',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'OperationStatusError'
                }
              }
            }
          }
        }
      end
    end
  end
end
