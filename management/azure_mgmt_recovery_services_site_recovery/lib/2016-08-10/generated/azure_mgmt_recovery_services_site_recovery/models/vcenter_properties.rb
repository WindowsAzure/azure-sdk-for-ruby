# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # vCenter properties.
    #
    class VCenterProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Friendly name of the vCenter.
      attr_accessor :friendly_name

      # @return [String] VCenter internal ID.
      attr_accessor :internal_id

      # @return [DateTime] The time when the last heartbeat was reveived by
      # vCenter.
      attr_accessor :last_heartbeat

      # @return [String] The VCenter discovery status.
      attr_accessor :discovery_status

      # @return [String] The process server Id.
      attr_accessor :process_server_id

      # @return [String] The IP address of the vCenter.
      attr_accessor :ip_address

      # @return [String] The infrastructure Id of vCenter.
      attr_accessor :infrastructure_id

      # @return [String] The port number for discovery.
      attr_accessor :port

      # @return [String] The account Id which has privileges to discover the
      # vCenter.
      attr_accessor :run_as_account_id

      # @return [String] The ARM resource name of the fabric containing this
      # VCenter.
      attr_accessor :fabric_arm_resource_name


      #
      # Mapper for VCenterProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VCenterProperties',
          type: {
            name: 'Composite',
            class_name: 'VCenterProperties',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              internal_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'internalId',
                type: {
                  name: 'String'
                }
              },
              last_heartbeat: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastHeartbeat',
                type: {
                  name: 'DateTime'
                }
              },
              discovery_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'discoveryStatus',
                type: {
                  name: 'String'
                }
              },
              process_server_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'processServerId',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              infrastructure_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'infrastructureId',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'port',
                type: {
                  name: 'String'
                }
              },
              run_as_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runAsAccountId',
                type: {
                  name: 'String'
                }
              },
              fabric_arm_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricArmResourceName',
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
