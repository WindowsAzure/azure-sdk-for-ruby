# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Details of a Master Target Server.
    #
    class MasterTargetServer

      include MsRestAzure

      # @return [String] The server Id.
      attr_accessor :id

      # @return [String] The IP address of the server.
      attr_accessor :ip_address

      # @return [String] The server name.
      attr_accessor :name

      # @return [String] The OS type of the server.
      attr_accessor :os_type

      # @return [String] The version of the scout component on the server.
      attr_accessor :agent_version

      # @return [DateTime] The last heartbeat received from the server.
      attr_accessor :last_heartbeat

      # @return [String] Version status
      attr_accessor :version_status

      # @return [Array<RetentionVolume>] The retention volumes of Master target
      # Server.
      attr_accessor :retention_volumes

      # @return [Array<DataStore>] The list of data stores in the fabric.
      attr_accessor :data_stores

      # @return [Array<HealthError>] Validation errors.
      attr_accessor :validation_errors

      # @return [Integer] Disk count of the master target.
      attr_accessor :disk_count

      # @return [String] OS Version of the master target.
      attr_accessor :os_version


      #
      # Mapper for MasterTargetServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MasterTargetServer',
          type: {
            name: 'Composite',
            class_name: 'MasterTargetServer',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              agent_version: {
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              last_heartbeat: {
                required: false,
                serialized_name: 'lastHeartbeat',
                type: {
                  name: 'DateTime'
                }
              },
              version_status: {
                required: false,
                serialized_name: 'versionStatus',
                type: {
                  name: 'String'
                }
              },
              retention_volumes: {
                required: false,
                serialized_name: 'retentionVolumes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RetentionVolumeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RetentionVolume'
                      }
                  }
                }
              },
              data_stores: {
                required: false,
                serialized_name: 'dataStores',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DataStoreElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataStore'
                      }
                  }
                }
              },
              validation_errors: {
                required: false,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
                      }
                  }
                }
              },
              disk_count: {
                required: false,
                serialized_name: 'diskCount',
                type: {
                  name: 'Number'
                }
              },
              os_version: {
                required: false,
                serialized_name: 'osVersion',
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
