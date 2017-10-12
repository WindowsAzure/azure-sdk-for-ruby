# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Dns
  module Models
    #
    # A CAA record.
    #
    class CaaRecord

      include MsRestAzure

      # @return [Integer] The flags for this CAA record as an integer between 0
      # and 255.
      attr_accessor :flags

      # @return [String] The tag for this CAA record.
      attr_accessor :tag

      # @return [String] The value for this CAA record.
      attr_accessor :value


      #
      # Mapper for CaaRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CaaRecord',
          type: {
            name: 'Composite',
            class_name: 'CaaRecord',
            model_properties: {
              flags: {
                required: false,
                serialized_name: 'flags',
                type: {
                  name: 'Number'
                }
              },
              tag: {
                required: false,
                serialized_name: 'tag',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
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
