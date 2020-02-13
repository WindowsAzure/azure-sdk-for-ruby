# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Linked service for Salesforce Service Cloud.
    #
    class SalesforceServiceCloudLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "SalesforceServiceCloud"
      end

      attr_accessor :type

      # @return The URL of Salesforce Service Cloud instance. Default is
      # 'https://login.salesforce.com'. To copy data from sandbox, specify
      # 'https://test.salesforce.com'. To copy data from custom domain,
      # specify, for example, 'https://[domain].my.salesforce.com'. Type:
      # string (or Expression with resultType string).
      attr_accessor :environment_url

      # @return The username for Basic authentication of the Salesforce
      # instance. Type: string (or Expression with resultType string).
      attr_accessor :username

      # @return [SecretBase] The password for Basic authentication of the
      # Salesforce instance.
      attr_accessor :password

      # @return [SecretBase] The security token is required to remotely access
      # Salesforce instance.
      attr_accessor :security_token

      # @return Extended properties appended to the connection string. Type:
      # string (or Expression with resultType string).
      attr_accessor :extended_properties

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for SalesforceServiceCloudLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SalesforceServiceCloud',
          type: {
            name: 'Composite',
            class_name: 'SalesforceServiceCloudLinkedService',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
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
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              environment_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.environmentUrl',
                type: {
                  name: 'Object'
                }
              },
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.username',
                type: {
                  name: 'Object'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.password',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              security_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.securityToken',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              extended_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.extendedProperties',
                type: {
                  name: 'Object'
                }
              },
              encrypted_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.encryptedCredential',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
