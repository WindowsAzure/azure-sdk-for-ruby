# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Response for check name availability API. Resource provider will set
    # availability as true | false.
    #
    class ResourceNameAvailabilityResult

      include MsRestAzure

      # @return [Boolean]
      attr_accessor :name_available

      # @return [String]
      attr_accessor :reason

      # @return [String]
      attr_accessor :message


      #
      # Mapper for ResourceNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'ResourceNameAvailabilityResult',
            model_properties: {
              name_available: {
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
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
