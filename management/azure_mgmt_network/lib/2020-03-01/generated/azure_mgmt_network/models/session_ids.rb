# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_03_01
  module Models
    #
    # List of session IDs.
    #
    class SessionIds

      include MsRestAzure

      # @return [Array<String>] List of session IDs.
      attr_accessor :session_ids


      #
      # Mapper for SessionIds class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SessionIds',
          type: {
            name: 'Composite',
            class_name: 'SessionIds',
            model_properties: {
              session_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sessionIds',
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
