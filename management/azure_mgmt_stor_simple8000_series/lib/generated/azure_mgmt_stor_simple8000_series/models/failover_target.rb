# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # Represents the eligibility of a device as a failover target device.
    #
    class FailoverTarget

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The path ID of the device.
      attr_accessor :device_id

      # @return [DeviceStatus] The status of the device. Possible values
      # include: 'Unknown', 'Online', 'Offline', 'Deactivated',
      # 'RequiresAttention', 'MaintenanceMode', 'Creating', 'Provisioning',
      # 'Deactivating', 'Deleted', 'ReadyToSetup'
      attr_accessor :device_status

      # @return [String] The model number of the device.
      attr_accessor :model_description

      # @return [String] The software version of the device.
      attr_accessor :device_software_version

      # @return [Integer] The count of datacontainers on the device.
      attr_accessor :data_containers_count

      # @return [Integer] The count of volumes on the device.
      attr_accessor :volumes_count

      # @return [Integer] The amount of free local storage available on the
      # device in bytes.
      attr_accessor :available_local_storage_in_bytes

      # @return [Integer] The amount of free tiered storage available for the
      # device in bytes.
      attr_accessor :available_tiered_storage_in_bytes

      # @return [String] The geo location (applicable only for cloud
      # appliances) of the device.
      attr_accessor :device_location

      # @return [String] The friendly name for the current version of software
      # on the device.
      attr_accessor :friendly_device_software_version

      # @return [TargetEligibilityResult] The eligibility result of the device,
      # as a failover target device.
      attr_accessor :eligibility_result


      #
      # Mapper for FailoverTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverTarget',
          type: {
            name: 'Composite',
            class_name: 'FailoverTarget',
            model_properties: {
              device_id: {
                required: false,
                serialized_name: 'deviceId',
                type: {
                  name: 'String'
                }
              },
              device_status: {
                required: false,
                serialized_name: 'deviceStatus',
                type: {
                  name: 'Enum',
                  module: 'DeviceStatus'
                }
              },
              model_description: {
                required: false,
                serialized_name: 'modelDescription',
                type: {
                  name: 'String'
                }
              },
              device_software_version: {
                required: false,
                serialized_name: 'deviceSoftwareVersion',
                type: {
                  name: 'String'
                }
              },
              data_containers_count: {
                required: false,
                serialized_name: 'dataContainersCount',
                type: {
                  name: 'Number'
                }
              },
              volumes_count: {
                required: false,
                serialized_name: 'volumesCount',
                type: {
                  name: 'Number'
                }
              },
              available_local_storage_in_bytes: {
                required: false,
                serialized_name: 'availableLocalStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              available_tiered_storage_in_bytes: {
                required: false,
                serialized_name: 'availableTieredStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              device_location: {
                required: false,
                serialized_name: 'deviceLocation',
                type: {
                  name: 'String'
                }
              },
              friendly_device_software_version: {
                required: false,
                serialized_name: 'friendlyDeviceSoftwareVersion',
                type: {
                  name: 'String'
                }
              },
              eligibility_result: {
                required: false,
                serialized_name: 'eligibilityResult',
                type: {
                  name: 'Composite',
                  class_name: 'TargetEligibilityResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
