# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Implements InnerHealthError class. HealthError object has a list of
    # InnerHealthErrors as child errors. InnerHealthError is used because this
    # will prevent an infinite loop of structures when Hydra tries to
    # auto-generate the contract. We are exposing the related health errors as
    # inner health errors and all API consumers can utilize this in the same
    # fashion as Exception -&gt; InnerException.
    #
    class InnerHealthError

      include MsRestAzure

      # @return [String] Source of error.
      attr_accessor :error_source

      # @return [String] Type of error.
      attr_accessor :error_type

      # @return [String] Level of error.
      attr_accessor :error_level

      # @return [String] Category of error.
      attr_accessor :error_category

      # @return [String] Error code.
      attr_accessor :error_code

      # @return [String] Summary message of the entity.
      attr_accessor :summary_message

      # @return [String] Error message.
      attr_accessor :error_message

      # @return [String] Possible causes of error.
      attr_accessor :possible_causes

      # @return [String] Recommended action to resolve error.
      attr_accessor :recommended_action

      # @return [DateTime] Error creation time (UTC)
      attr_accessor :creation_time_utc

      # @return [String] DRA error message.
      attr_accessor :recovery_provider_error_message

      # @return [String] ID of the entity.
      attr_accessor :entity_id


      #
      # Mapper for InnerHealthError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InnerHealthError',
          type: {
            name: 'Composite',
            class_name: 'InnerHealthError',
            model_properties: {
              error_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorSource',
                type: {
                  name: 'String'
                }
              },
              error_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorType',
                type: {
                  name: 'String'
                }
              },
              error_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorLevel',
                type: {
                  name: 'String'
                }
              },
              error_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorCategory',
                type: {
                  name: 'String'
                }
              },
              error_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              summary_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summaryMessage',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              },
              possible_causes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'possibleCauses',
                type: {
                  name: 'String'
                }
              },
              recommended_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendedAction',
                type: {
                  name: 'String'
                }
              },
              creation_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'creationTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_provider_error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryProviderErrorMessage',
                type: {
                  name: 'String'
                }
              },
              entity_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entityId',
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