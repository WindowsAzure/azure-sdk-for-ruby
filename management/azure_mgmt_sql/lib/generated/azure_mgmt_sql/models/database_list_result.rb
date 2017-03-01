# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a list database request.
    #
    class DatabaseListResult

      include MsRestAzure

      # @return [Array<Database>] The list of databases housed in the server.
      attr_accessor :value


      #
      # Mapper for DatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DatabaseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Database'
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
