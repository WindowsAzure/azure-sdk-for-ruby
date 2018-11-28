# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview
  module Models
    #
    # Describes an identity resource.
    #
    class Identity

      include MsRestAzure

      # @return [String] The id of the created identity.
      attr_accessor :id

      # @return [String] The name of the created identity.
      attr_accessor :name

      # @return [String] The Azure region where the identity lives.
      attr_accessor :location

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return The id of the tenant which the identity belongs to.
      attr_accessor :tenant_id

      # @return The id of the service principal object associated with the
      # created identity.
      attr_accessor :principal_id

      # @return The id of the app associated with the identity. This is a
      # random generated UUID by MSI.
      attr_accessor :client_id

      # @return [String]  The ManagedServiceIdentity DataPlane URL that can be
      # queried to obtain the identity credentials.
      attr_accessor :client_secret_url

      # @return [UserAssignedIdentities] The type of resource i.e.
      # Microsoft.ManagedIdentity/userAssignedIdentities. Possible values
      # include: 'Microsoft.ManagedIdentity/userAssignedIdentities'
      attr_accessor :type


      #
      # Mapper for Identity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Identity',
          type: {
            name: 'Composite',
            class_name: 'Identity',
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
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.principalId',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret_url: {
                required: false,
                read_only: true,
                serialized_name: 'properties.clientSecretUrl',
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
              }
            }
          }
        }
      end
    end
  end
end
