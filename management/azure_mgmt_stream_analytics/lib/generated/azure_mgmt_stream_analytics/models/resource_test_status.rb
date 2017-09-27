# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes the status of the test operation along with error information,
    # if applicable.
    #
    class ResourceTestStatus

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The status of the test operation.
      attr_accessor :status

      # @return [ErrorResponse] Describes the error that occurred.
      attr_accessor :error


      #
      # Mapper for ResourceTestStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceTestStatus',
          type: {
            name: 'Composite',
            class_name: 'ResourceTestStatus',
            model_properties: {
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponse'
                }
              }
            }
          }
        }
      end
    end
  end
end
