# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # Operation status response
    #
    class OperationStatusResponse

      include MsRestAzure

      # @return [String] Operation ID
      attr_accessor :name

      # @return [String] Operation status
      attr_accessor :status

      # @return [DateTime] Start time of the operation
      attr_accessor :start_time

      # @return [DateTime] End time of the operation
      attr_accessor :end_time

      # @return [ApiError] Api error
      attr_accessor :error


      #
      # Mapper for OperationStatusResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationStatusResponse',
          type: {
            name: 'Composite',
            class_name: 'OperationStatusResponse',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ApiError'
                }
              }
            }
          }
        }
      end
    end
  end
end
