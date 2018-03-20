# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Reconnect request parameters.
    #
    class BackendReconnectContract < Resource

      include MsRestAzure

      # @return [Duration] Duration in ISO8601 format after which reconnect
      # will be initiated. Minimum duration of the Reconect is PT2M.
      attr_accessor :after


      #
      # Mapper for BackendReconnectContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendReconnectContract',
          type: {
            name: 'Composite',
            class_name: 'BackendReconnectContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              after: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.after',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
