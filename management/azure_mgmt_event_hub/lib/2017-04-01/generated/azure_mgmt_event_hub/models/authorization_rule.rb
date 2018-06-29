# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2017_04_01
  module Models
    #
    # Single item in a List or Get AuthorizationRule operation
    #
    class AuthorizationRule < Resource

      include MsRestAzure

      # @return [Array<AccessRights>] The rights associated with the rule.
      attr_accessor :rights


      #
      # Mapper for AuthorizationRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AuthorizationRule',
          type: {
            name: 'Composite',
            class_name: 'AuthorizationRule',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              rights: {
                required: false,
                serialized_name: 'properties.rights',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AccessRightsElementType',
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
