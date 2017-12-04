# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_03_01
  module Models
    #
    # The result of a request to check the availability of a container registry
    # name.
    #
    class RegistryNameStatus

      include MsRestAzure

      # @return [Boolean] The value that indicates whether the name is
      # available.
      attr_accessor :name_available

      # @return [String] If any, the reason that the name is not available.
      attr_accessor :reason

      # @return [String] If any, the error message that provides more detail
      # for the reason that the name is not available.
      attr_accessor :message


      #
      # Mapper for RegistryNameStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegistryNameStatus',
          type: {
            name: 'Composite',
            class_name: 'RegistryNameStatus',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
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
