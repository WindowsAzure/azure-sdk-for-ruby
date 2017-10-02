# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # Represents a collection of log profiles.
    #
    class LogProfileCollection

      include MsRestAzure

      # @return [Array<LogProfileResource>] the values of the log profiles.
      attr_accessor :value


      #
      # Mapper for LogProfileCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LogProfileCollection',
          type: {
            name: 'Composite',
            class_name: 'LogProfileCollection',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'LogProfileResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LogProfileResource'
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
