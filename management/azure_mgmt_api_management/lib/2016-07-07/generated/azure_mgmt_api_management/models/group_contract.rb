# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Developer group.
    #
    class GroupContract

      include MsRestAzure

      # @return [String] Uniquely identifies the group within the current API
      # Management service instance. The value is a valid relative URL in the
      # format of /groups/{groupId} where {groupId} is a group identifier.
      attr_accessor :id

      # @return [String] Group name.
      attr_accessor :name

      # @return [String] Group description. Can contain HTML formatting tags.
      attr_accessor :description

      # @return [Boolean] true if the group is one of the three system groups
      # (Administrators, Developers, or Guests); otherwise false.
      attr_accessor :built_in

      # @return [GroupTypeContract] Group type. Possible values include:
      # 'Custom', 'System', 'External'
      attr_accessor :type

      # @return [String] For external groups, this property contains the id of
      # the group from the external identity provider, e.g. Azure Active
      # Directory; otherwise the value is null.
      attr_accessor :external_id


      #
      # Mapper for GroupContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GroupContract',
          type: {
            name: 'Composite',
            class_name: 'GroupContract',
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
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 1000
                },
                type: {
                  name: 'String'
                }
              },
              built_in: {
                required: false,
                read_only: true,
                serialized_name: 'builtIn',
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'GroupTypeContract'
                }
              },
              external_id: {
                required: false,
                read_only: true,
                serialized_name: 'externalId',
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
