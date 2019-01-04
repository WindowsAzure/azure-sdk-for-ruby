# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2015_08_01
  module Models
    #
    # Description of a namespace authorization rule.
    #
    class SharedAccessAuthorizationRuleResource < Resource

      include MsRestAzure

      # @return [Array<AccessRights>] The rights associated with the rule.
      attr_accessor :rights


      #
      # Mapper for SharedAccessAuthorizationRuleResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SharedAccessAuthorizationRuleResource',
          type: {
            name: 'Composite',
            class_name: 'SharedAccessAuthorizationRuleResource',
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
              location: {
                required: false,
                serialized_name: 'location',
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
                required: true,
                serialized_name: 'properties.rights',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AccessRightsElementType',
                      type: {
                        name: 'Enum',
                        module: 'AccessRights'
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
