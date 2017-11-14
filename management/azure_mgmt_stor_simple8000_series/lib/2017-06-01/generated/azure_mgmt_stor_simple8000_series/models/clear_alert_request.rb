# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The request for clearing the alert
    #
    class ClearAlertRequest

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resolution message while clearing the alert
      attr_accessor :resolution_message

      # @return [Array<String>] The list of alert IDs to be cleared
      attr_accessor :alerts


      #
      # Mapper for ClearAlertRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClearAlertRequest',
          type: {
            name: 'Composite',
            class_name: 'ClearAlertRequest',
            model_properties: {
              resolution_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resolutionMessage',
                type: {
                  name: 'String'
                }
              },
              alerts: {
                client_side_validation: true,
                required: true,
                serialized_name: 'alerts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
