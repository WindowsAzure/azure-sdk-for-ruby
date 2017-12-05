# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # InMage protected disk details.
    #
    class InMageProtectedDiskDetails

      include MsRestAzure

      # @return [String] The disk id.
      attr_accessor :disk_id

      # @return [String] The disk name.
      attr_accessor :disk_name

      # @return [String] The protection stage.
      attr_accessor :protection_stage

      # @return [String] The health error code for the disk.
      attr_accessor :health_error_code

      # @return [Integer] The RPO in seconds.
      attr_accessor :rpo_in_seconds

      # @return [String] A value indicating whether resync is required for this
      # disk.
      attr_accessor :resync_required

      # @return [Integer] The resync progress percentage.
      attr_accessor :resync_progress_percentage

      # @return [Integer] The resync duration in seconds.
      attr_accessor :resync_duration_in_seconds

      # @return [Integer] The disk capacity in bytes.
      attr_accessor :disk_capacity_in_bytes

      # @return [Integer] The file system capacity in bytes.
      attr_accessor :file_system_capacity_in_bytes

      # @return [Float] The source data transit in MB.
      attr_accessor :source_data_in_mb

      # @return [Float] The PS data transit in MB.
      attr_accessor :ps_data_in_mb

      # @return [Float] The target data transit in MB.
      attr_accessor :target_data_in_mb

      # @return [String] A value indicating whether disk is resized.
      attr_accessor :disk_resized

      # @return [DateTime] The last RPO calculated time.
      attr_accessor :last_rpo_calculated_time


      #
      # Mapper for InMageProtectedDiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMageProtectedDiskDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageProtectedDiskDetails',
            model_properties: {
              disk_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskId',
                type: {
                  name: 'String'
                }
              },
              disk_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskName',
                type: {
                  name: 'String'
                }
              },
              protection_stage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionStage',
                type: {
                  name: 'String'
                }
              },
              health_error_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthErrorCode',
                type: {
                  name: 'String'
                }
              },
              rpo_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rpoInSeconds',
                type: {
                  name: 'Number'
                }
              },
              resync_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resyncRequired',
                type: {
                  name: 'String'
                }
              },
              resync_progress_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resyncProgressPercentage',
                type: {
                  name: 'Number'
                }
              },
              resync_duration_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resyncDurationInSeconds',
                type: {
                  name: 'Number'
                }
              },
              disk_capacity_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskCapacityInBytes',
                type: {
                  name: 'Number'
                }
              },
              file_system_capacity_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileSystemCapacityInBytes',
                type: {
                  name: 'Number'
                }
              },
              source_data_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceDataInMB',
                type: {
                  name: 'Double'
                }
              },
              ps_data_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'psDataInMB',
                type: {
                  name: 'Double'
                }
              },
              target_data_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDataInMB',
                type: {
                  name: 'Double'
                }
              },
              disk_resized: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskResized',
                type: {
                  name: 'String'
                }
              },
              last_rpo_calculated_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRpoCalculatedTime',
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
