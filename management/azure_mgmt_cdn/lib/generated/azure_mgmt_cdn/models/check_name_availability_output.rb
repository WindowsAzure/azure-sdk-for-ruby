# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Output of check name availability API.
    #
    class CheckNameAvailabilityOutput

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Indicates whether the name is available.
      attr_accessor :name_available

      # @return [String] The reason why the name is not available.
      attr_accessor :reason

      # @return [String] The detailed error message describing why the name is
      # not available.
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityOutput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityOutput',
            model_properties: {
              name_available: {
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
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
