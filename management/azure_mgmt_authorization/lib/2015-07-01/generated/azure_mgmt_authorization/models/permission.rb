# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2015_07_01
  module Models
    #
    # Role definition permissions.
    #
    class Permission

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] Allowed actions.
      attr_accessor :actions

      # @return [Array<String>] Denied actions.
      attr_accessor :not_actions


      #
      # Mapper for Permission class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Permission',
          type: {
            name: 'Composite',
            class_name: 'Permission',
            model_properties: {
              actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actions',
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
              },
              not_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'notActions',
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
