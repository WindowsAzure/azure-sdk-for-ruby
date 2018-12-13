# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # The response containing list of capabilities.
    #
    class CapabilitiesListResult

      include MsRestAzure

      # @return [Array<Capabilities>] The list of capabilities.
      attr_accessor :value

      # @return [String] The URI to fetch the next page of capabilities.
      attr_accessor :next_link


      #
      # Mapper for CapabilitiesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CapabilitiesListResult',
          type: {
            name: 'Composite',
            class_name: 'CapabilitiesListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CapabilitiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Capabilities'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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