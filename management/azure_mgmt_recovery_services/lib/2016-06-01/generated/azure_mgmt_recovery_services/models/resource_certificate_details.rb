# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Certificate details representing the Vault credentials.
    #
    class ResourceCertificateDetails

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureActiveDirectory"] = "ResourceCertificateAndAadDetails"
      @@discriminatorMap["AccessControlService"] = "ResourceCertificateAndAcsDetails"

      def initialize
        @authType = "ResourceCertificateDetails"
      end

      attr_accessor :authType

      # @return [Array<Integer>] The base64 encoded certificate raw data
      # string.
      attr_accessor :certificate

      # @return [String] Certificate friendly name.
      attr_accessor :friendly_name

      # @return [String] Certificate issuer.
      attr_accessor :issuer

      # @return [Integer] Resource ID of the vault.
      attr_accessor :resource_id

      # @return [String] Certificate Subject Name.
      attr_accessor :subject

      # @return [String] Certificate thumbprint.
      attr_accessor :thumbprint

      # @return [DateTime] Certificate Validity start Date time.
      attr_accessor :valid_from

      # @return [DateTime] Certificate Validity End Date time.
      attr_accessor :valid_to


      #
      # Mapper for ResourceCertificateDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceCertificateDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'authType',
            uber_parent: 'ResourceCertificateDetails',
            class_name: 'ResourceCertificateDetails',
            model_properties: {
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
                type: {
                  name: 'ByteArray'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              issuer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'issuer',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'Number'
                }
              },
              subject: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              valid_from: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validFrom',
                type: {
                  name: 'DateTime'
                }
              },
              valid_to: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validTo',
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
