# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The CRM connector properties.
    #
    class CrmConnectorProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The connection string.
      attr_accessor :connection_string

      # @return [String] The organization ID.
      attr_accessor :organization_id

      # @return [String] The organization URL.
      attr_accessor :organization_url

      # @return [Array<CrmConnectorEntities>] The entities like account,
      # contact, opportunity.
      attr_accessor :entities

      # @return [String] The access token.
      attr_accessor :access_token


      #
      # Mapper for CrmConnectorProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CrmConnectorProperties',
          type: {
            name: 'Composite',
            class_name: 'CrmConnectorProperties',
            model_properties: {
              connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionString',
                type: {
                  name: 'String'
                }
              },
              organization_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'organizationId',
                type: {
                  name: 'String'
                }
              },
              organization_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'organizationUrl',
                type: {
                  name: 'String'
                }
              },
              entities: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CrmConnectorEntitiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CrmConnectorEntities'
                      }
                  }
                }
              },
              access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessToken',
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
