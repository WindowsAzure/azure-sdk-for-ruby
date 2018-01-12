# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # The structure of the error
    #
    class ErrorModel

      include MsRestAzure

      # @return [ErrorModelError] The error detail
      attr_accessor :error


      #
      # Mapper for ErrorModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorModel',
          type: {
            name: 'Composite',
            class_name: 'ErrorModel',
            model_properties: {
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorModelError'
                }
              }
            }
          }
        }
      end
    end
  end
end
