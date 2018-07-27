# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # The response of the list policy operation.
    #
    class PolicyCollection

      include MsRestAzure

      # @return [Array<PolicyContract>] Policy Contract value.
      attr_accessor :value

      # @return [String] Next page link if any.
      attr_accessor :next_link


      #
      # Mapper for PolicyCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyCollection',
          type: {
            name: 'Composite',
            class_name: 'PolicyCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PolicyContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PolicyContract'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
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
