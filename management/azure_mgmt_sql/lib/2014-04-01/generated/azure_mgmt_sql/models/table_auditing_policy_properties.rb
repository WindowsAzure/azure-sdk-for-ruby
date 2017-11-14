# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Properties of a table auditing policy.
    #
    class TableAuditingPolicyProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The state of the policy.
      attr_accessor :auditing_state

      # @return [String] The audit logs table name.
      attr_accessor :audit_logs_table_name

      # @return [String] Comma-separated list of event types to audit.
      attr_accessor :event_types_to_audit

      # @return [String] The full audit logs table name.
      attr_accessor :full_audit_logs_table_name

      # @return [String] The number of days to keep in the audit logs.
      attr_accessor :retention_days

      # @return [String] The key of the auditing storage account.
      attr_accessor :storage_account_key

      # @return [String] The table storage account name
      attr_accessor :storage_account_name

      # @return [String] The table storage account resource group name
      attr_accessor :storage_account_resource_group_name

      # @return [String] The secondary key of the auditing storage account.
      attr_accessor :storage_account_secondary_key

      # @return The table storage subscription Id.
      attr_accessor :storage_account_subscription_id

      # @return [String] The storage table endpoint.
      attr_accessor :storage_table_endpoint


      #
      # Mapper for TableAuditingPolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TableAuditingPolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'TableAuditingPolicyProperties',
            model_properties: {
              auditing_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'auditingState',
                type: {
                  name: 'String'
                }
              },
              audit_logs_table_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'auditLogsTableName',
                type: {
                  name: 'String'
                }
              },
              event_types_to_audit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventTypesToAudit',
                type: {
                  name: 'String'
                }
              },
              full_audit_logs_table_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fullAuditLogsTableName',
                type: {
                  name: 'String'
                }
              },
              retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionDays',
                type: {
                  name: 'String'
                }
              },
              storage_account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountKey',
                type: {
                  name: 'String'
                }
              },
              storage_account_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountName',
                type: {
                  name: 'String'
                }
              },
              storage_account_resource_group_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountResourceGroupName',
                type: {
                  name: 'String'
                }
              },
              storage_account_secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountSecondaryKey',
                type: {
                  name: 'String'
                }
              },
              storage_account_subscription_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountSubscriptionId',
                type: {
                  name: 'String'
                }
              },
              storage_table_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageTableEndpoint',
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
