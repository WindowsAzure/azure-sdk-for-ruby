# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # Subscription-level properties and limits for Data Lake Analytics
    #
    class CapabilityInformation

      include MsRestAzure

      # @return the subscription credentials that uniquely identifies the
      # subscription.
      attr_accessor :subscription_id

      # @return [SubscriptionState] the subscription state. Possible values
      # include: 'Registered', 'Suspended', 'Deleted', 'Unregistered', 'Warned'
      attr_accessor :state

      # @return [Integer] the maximum supported number of accounts under this
      # subscription.
      attr_accessor :max_account_count

      # @return [Integer] the current number of accounts under this
      # subscription.
      attr_accessor :account_count

      # @return [Boolean] the Boolean value of true or false to indicate the
      # maintenance state.
      attr_accessor :migration_state


      #
      # Mapper for CapabilityInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CapabilityInformation',
          type: {
            name: 'Composite',
            class_name: 'CapabilityInformation',
            model_properties: {
              subscription_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              max_account_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maxAccountCount',
                type: {
                  name: 'Number'
                }
              },
              account_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'accountCount',
                type: {
                  name: 'Number'
                }
              },
              migration_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'migrationState',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
