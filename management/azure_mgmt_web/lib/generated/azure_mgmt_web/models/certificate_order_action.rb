# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Certificate order action.
    #
    class CertificateOrderAction < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [CertificateOrderActionType] Action type. Possible values
      # include: 'CertificateIssued', 'CertificateOrderCanceled',
      # 'CertificateOrderCreated', 'CertificateRevoked',
      # 'DomainValidationComplete', 'FraudDetected', 'OrgNameChange',
      # 'OrgValidationComplete', 'SanDrop', 'FraudCleared',
      # 'CertificateExpired', 'CertificateExpirationWarning',
      # 'FraudDocumentationRequired', 'Unknown'
      attr_accessor :certificate_order_action_type

      # @return [DateTime] Time at which the certificate action was performed.
      attr_accessor :created_at


      #
      # Mapper for CertificateOrderAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CertificateOrderAction',
          type: {
            name: 'Composite',
            class_name: 'CertificateOrderAction',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
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
              certificate_order_action_type: {
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'Enum',
                  module: 'CertificateOrderActionType'
                }
              },
              created_at: {
                required: false,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
