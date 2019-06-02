# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NotificationHubs::Mgmt::V2017_04_01
  module Models
    #
    # Description of a Namespace AuthorizationRules.
    #
    class SharedAccessAuthorizationRuleResource < Resource

      include MsRestAzure

      # @return [Array<AccessRights>] The rights associated with the rule.
      attr_accessor :rights

      # @return [String] A base64-encoded 256-bit primary key for signing and
      # validating the SAS token.
      attr_accessor :primary_key

      # @return [String] A base64-encoded 256-bit primary key for signing and
      # validating the SAS token.
      attr_accessor :secondary_key

      # @return [String] A string that describes the authorization rule.
      attr_accessor :key_name

      # @return [String] A string that describes the claim type
      attr_accessor :claim_type

      # @return [String] A string that describes the claim value
      attr_accessor :claim_value

      # @return [String] The last modified time for this rule
      attr_accessor :modified_time

      # @return [String] The created time for this rule
      attr_accessor :created_time

      # @return [Integer] The revision number for the rule
      attr_accessor :revision


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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
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
                        name: 'Enum',
                        module: 'AccessRights'
                      }
                  }
                }
              },
              primary_key: {
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                read_only: true,
                serialized_name: 'properties.secondaryKey',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.keyName',
                type: {
                  name: 'String'
                }
              },
              claim_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.claimType',
                type: {
                  name: 'String'
                }
              },
              claim_value: {
                required: false,
                read_only: true,
                serialized_name: 'properties.claimValue',
                type: {
                  name: 'String'
                }
              },
              modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.modifiedTime',
                type: {
                  name: 'String'
                }
              },
              created_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'String'
                }
              },
              revision: {
                required: false,
                read_only: true,
                serialized_name: 'properties.revision',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
