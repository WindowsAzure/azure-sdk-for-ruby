# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the certificate source parameters using CDN managed certificate
    # for enabling SSL.
    #
    class CdnManagedHttpsParameters < CustomDomainHttpsParameters

      include MsRestAzure


      def initialize
        @certificateSource = "Cdn"
      end

      attr_accessor :certificateSource

      # @return [CdnCertificateSourceParameters] Defines the certificate source
      # parameters using CDN managed certificate for enabling SSL.
      attr_accessor :certificate_source_parameters


      #
      # Mapper for CdnManagedHttpsParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cdn',
          type: {
            name: 'Composite',
            class_name: 'CdnManagedHttpsParameters',
            model_properties: {
              protocol_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protocolType',
                type: {
                  name: 'String'
                }
              },
              minimum_tls_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minimumTlsVersion',
                type: {
                  name: 'Enum',
                  module: 'MinimumTlsVersion'
                }
              },
              certificateSource: {
                client_side_validation: true,
                required: true,
                serialized_name: 'certificateSource',
                type: {
                  name: 'String'
                }
              },
              certificate_source_parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'certificateSourceParameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'CdnCertificateSourceParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
