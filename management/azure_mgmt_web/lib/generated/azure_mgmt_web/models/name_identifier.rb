# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Identifies an object.
    #
    class NameIdentifier

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the object.
      attr_accessor :name


      #
      # Mapper for NameIdentifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NameIdentifier',
          type: {
            name: 'Composite',
            class_name: 'NameIdentifier',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
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
