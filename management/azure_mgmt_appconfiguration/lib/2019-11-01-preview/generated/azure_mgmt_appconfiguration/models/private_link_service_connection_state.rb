# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2019_11_01_preview
  module Models
    #
    # The state of a private link service connection.
    #
    class PrivateLinkServiceConnectionState

      include MsRestAzure

      # @return [ConnectionStatus] The private link service connection status.
      # Possible values include: 'Pending', 'Approved', 'Rejected',
      # 'Disconnected'
      attr_accessor :status

      # @return [String] The private link service connection description.
      attr_accessor :description

      # @return [ActionsRequired] Any action that is required beyond basic
      # workflow (approve/ reject/ disconnect). Possible values include:
      # 'None', 'Recreate'
      attr_accessor :actions_required


      #
      # Mapper for PrivateLinkServiceConnectionState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkServiceConnectionState',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkServiceConnectionState',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              actions_required: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'actionsRequired',
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
