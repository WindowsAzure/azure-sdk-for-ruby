# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Certificate details.
    #
    class CertificateContract < Resource

      include MsRestAzure

      # @return [String] Subject attribute of the certificate.
      attr_accessor :subject

      # @return [String] Thumbprint of the certificate.
      attr_accessor :thumbprint

      # @return [DateTime] Expiration date of the certificate. The date
      # conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified
      # by the ISO 8601 standard.
      #
      attr_accessor :expiration_date


      #
      # Mapper for CertificateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateContract',
          type: {
            name: 'Composite',
            class_name: 'CertificateContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              subject: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.subject',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.expirationDate',
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
