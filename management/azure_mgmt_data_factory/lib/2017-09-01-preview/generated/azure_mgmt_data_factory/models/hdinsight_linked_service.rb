# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # HDInsight linked service.
    #
    class HDInsightLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "HDInsight"
      end

      attr_accessor :type

      # @return HDInsight cluster URI. Type: string (or Expression with
      # resultType string).
      attr_accessor :cluster_uri

      # @return HDInsight cluster user name. Type: string (or Expression with
      # resultType string).
      attr_accessor :user_name

      # @return [SecretBase] HDInsight cluster password.
      attr_accessor :password

      # @return [LinkedServiceReference] The Azure Storage linked service
      # reference.
      attr_accessor :linked_service_name

      # @return [LinkedServiceReference] A reference to the Azure SQL linked
      # service that points to the HCatalog database.
      attr_accessor :hcatalog_linked_service_name

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for HDInsightLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HDInsight',
          type: {
            name: 'Composite',
            class_name: 'HDInsightLinkedService',
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
              cluster_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.clusterUri',
                type: {
                  name: 'Object'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.userName',
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
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              hcatalog_linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.hcatalogLinkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
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
