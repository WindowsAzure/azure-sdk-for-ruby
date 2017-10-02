# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Send only to a maximum of max users.
    #
    class EngageSubsetFilter < Filter

      include MsRestAzure


      def initialize
        @type = "engage-subset"
      end

      attr_accessor :type

      # @return [Integer] An integer value representing the maximum users that
      # should be pushed.
      attr_accessor :max


      #
      # Mapper for EngageSubsetFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'engage-subset',
          type: {
            name: 'Composite',
            class_name: 'EngageSubsetFilter',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              max: {
                required: false,
                serialized_name: 'max',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
