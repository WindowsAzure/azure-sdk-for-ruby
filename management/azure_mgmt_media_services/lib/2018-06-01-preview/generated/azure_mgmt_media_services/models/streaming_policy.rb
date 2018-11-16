# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # A Streaming Policy resource
    #
    class StreamingPolicy < ProxyResource

      include MsRestAzure

      # @return [DateTime] Creation time of Streaming Policy
      attr_accessor :created

      # @return [String] Default ContentKey used by current Streaming Policy
      attr_accessor :default_content_key_policy_name

      # @return [EnvelopeEncryption] Configuration of EnvelopeEncryption
      attr_accessor :envelope_encryption

      # @return [CommonEncryptionCenc] Configuration of CommonEncryptionCenc
      attr_accessor :common_encryption_cenc

      # @return [CommonEncryptionCbcs] Configuration of CommonEncryptionCbcs
      attr_accessor :common_encryption_cbcs

      # @return [NoEncryption] Configurations of NoEncryption
      attr_accessor :no_encryption


      #
      # Mapper for StreamingPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StreamingPolicy',
          type: {
            name: 'Composite',
            class_name: 'StreamingPolicy',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              created: {
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              default_content_key_policy_name: {
                required: false,
                serialized_name: 'properties.defaultContentKeyPolicyName',
                type: {
                  name: 'String'
                }
              },
              envelope_encryption: {
                required: false,
                serialized_name: 'properties.envelopeEncryption',
                type: {
                  name: 'Composite',
                  class_name: 'EnvelopeEncryption'
                }
              },
              common_encryption_cenc: {
                required: false,
                serialized_name: 'properties.commonEncryptionCenc',
                type: {
                  name: 'Composite',
                  class_name: 'CommonEncryptionCenc'
                }
              },
              common_encryption_cbcs: {
                required: false,
                serialized_name: 'properties.commonEncryptionCbcs',
                type: {
                  name: 'Composite',
                  class_name: 'CommonEncryptionCbcs'
                }
              },
              no_encryption: {
                required: false,
                serialized_name: 'properties.noEncryption',
                type: {
                  name: 'Composite',
                  class_name: 'NoEncryption'
                }
              }
            }
          }
        }
      end
    end
  end
end
