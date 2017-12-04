# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # The base backup engine class. All workload specific backup engines derive
    # from this class.
    #
    class BackupEngineBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureBackupServerEngine"] = "AzureBackupServerEngine"
      @@discriminatorMap["DpmBackupEngine"] = "DpmBackupEngine"

      def initialize
        @backupEngineType = "BackupEngineBase"
      end

      attr_accessor :backupEngineType

      # @return [String] Friendly name of the backup engine.
      attr_accessor :friendly_name

      # @return [BackupManagementType] Type of backup management for the backup
      # engine. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] Registration status of the backup engine with the
      # Recovery Services Vault.
      attr_accessor :registration_status

      # @return [String] Status of the backup engine with the Recovery Services
      # Vault. = {Active/Deleting/DeleteFailed}
      attr_accessor :backup_engine_state

      # @return [String] Backup status of the backup engine.
      attr_accessor :health_status

      # @return [Boolean] Flag indicating if the backup engine be registered,
      # once already registered.
      attr_accessor :can_re_register

      # @return [String] ID of the backup engine.
      attr_accessor :backup_engine_id

      # @return [String] Backup engine version
      attr_accessor :dpm_version

      # @return [String] Backup agent version
      attr_accessor :azure_backup_agent_version

      # @return [Boolean] To check if backup agent upgrade available
      attr_accessor :is_azure_backup_agent_upgrade_available

      # @return [Boolean] To check if backup engine upgrade available
      attr_accessor :is_dpmupgrade_available

      # @return [BackupEngineExtendedInfo] Extended info of the backupengine
      attr_accessor :extended_info


      #
      # Mapper for BackupEngineBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupEngineBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'backupEngineType',
            uber_parent: 'BackupEngineBase',
            class_name: 'BackupEngineBase',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              backup_engine_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupEngineState',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              backup_engine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupEngineId',
                type: {
                  name: 'String'
                }
              },
              dpm_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dpmVersion',
                type: {
                  name: 'String'
                }
              },
              azure_backup_agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBackupAgentVersion',
                type: {
                  name: 'String'
                }
              },
              is_azure_backup_agent_upgrade_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isAzureBackupAgentUpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              is_dpmupgrade_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDPMUpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'BackupEngineExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
