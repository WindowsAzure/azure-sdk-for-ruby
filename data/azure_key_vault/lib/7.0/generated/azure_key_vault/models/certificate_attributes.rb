# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # The certificate management attributes.
    #
    class CertificateAttributes < Attributes

      include MsRestAzure

      # @return [DeletionRecoveryLevel] Reflects the deletion recovery level
      # currently in effect for certificates in the current vault. If it
      # contains 'Purgeable', the certificate can be permanently deleted by a
      # privileged user; otherwise, only the system can purge the certificate,
      # at the end of the retention interval. Possible values include:
      # 'Purgeable', 'Recoverable+Purgeable', 'Recoverable',
      # 'Recoverable+ProtectedSubscription'
      attr_accessor :recovery_level


      #
      # Mapper for CertificateAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateAttributes',
          type: {
            name: 'Composite',
            class_name: 'CertificateAttributes',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              not_before: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nbf',
                type: {
                  name: 'UnixTime'
                }
              },
              expires: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exp',
                type: {
                  name: 'UnixTime'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'UnixTime'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updated',
                type: {
                  name: 'UnixTime'
                }
              },
              recovery_level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recoveryLevel',
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
