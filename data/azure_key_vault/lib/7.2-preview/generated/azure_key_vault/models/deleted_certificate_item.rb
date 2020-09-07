# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # The deleted certificate item containing metadata about the deleted
    # certificate.
    #
    class DeletedCertificateItem < CertificateItem

      include MsRestAzure

      # @return [String] The url of the recovery object, used to identify and
      # recover the deleted certificate.
      attr_accessor :recovery_id

      # @return The time when the certificate is scheduled to be purged, in UTC
      attr_accessor :scheduled_purge_date

      # @return The time when the certificate was deleted, in UTC
      attr_accessor :deleted_date


      #
      # Mapper for DeletedCertificateItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeletedCertificateItem',
          type: {
            name: 'Composite',
            class_name: 'DeletedCertificateItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateAttributes'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              x509thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'x5t',
                type: {
                  name: 'Base64Url'
                }
              },
              recovery_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryId',
                type: {
                  name: 'String'
                }
              },
              scheduled_purge_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scheduledPurgeDate',
                type: {
                  name: 'UnixTime'
                }
              },
              deleted_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deletedDate',
                type: {
                  name: 'UnixTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
