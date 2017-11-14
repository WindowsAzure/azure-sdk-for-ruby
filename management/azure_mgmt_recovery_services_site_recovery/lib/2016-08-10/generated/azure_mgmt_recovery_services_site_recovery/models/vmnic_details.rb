# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Hyper V VM network details.
    #
    class VMNicDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The nic Id.
      attr_accessor :nic_id

      # @return [String] The replica nic Id.
      attr_accessor :replica_nic_id

      # @return [String] The source nic ARM Id.
      attr_accessor :source_nic_arm_id

      # @return [String] VM subnet name.
      attr_accessor :v_msubnet_name

      # @return [String] VM network name.
      attr_accessor :v_mnetwork_name

      # @return [String] Recovery VM network Id.
      attr_accessor :recovery_vmnetwork_id

      # @return [String] Recovery VM subnet name.
      attr_accessor :recovery_vmsubnet_name

      # @return [String] Ip address type.
      attr_accessor :ip_address_type

      # @return [String] Primary nic static IP address.
      attr_accessor :primary_nic_static_ipaddress

      # @return [String] Replica nic static IP address.
      attr_accessor :replica_nic_static_ipaddress

      # @return [String] Selection type for failover.
      attr_accessor :selection_type

      # @return [String] IP allocation type for recovery VM.
      attr_accessor :recovery_nic_ip_address_type


      #
      # Mapper for VMNicDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VMNicDetails',
          type: {
            name: 'Composite',
            class_name: 'VMNicDetails',
            model_properties: {
              nic_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nicId',
                type: {
                  name: 'String'
                }
              },
              replica_nic_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicaNicId',
                type: {
                  name: 'String'
                }
              },
              source_nic_arm_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceNicArmId',
                type: {
                  name: 'String'
                }
              },
              v_msubnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vMSubnetName',
                type: {
                  name: 'String'
                }
              },
              v_mnetwork_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vMNetworkName',
                type: {
                  name: 'String'
                }
              },
              recovery_vmnetwork_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryVMNetworkId',
                type: {
                  name: 'String'
                }
              },
              recovery_vmsubnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryVMSubnetName',
                type: {
                  name: 'String'
                }
              },
              ip_address_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddressType',
                type: {
                  name: 'String'
                }
              },
              primary_nic_static_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryNicStaticIPAddress',
                type: {
                  name: 'String'
                }
              },
              replica_nic_static_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicaNicStaticIPAddress',
                type: {
                  name: 'String'
                }
              },
              selection_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'selectionType',
                type: {
                  name: 'String'
                }
              },
              recovery_nic_ip_address_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryNicIpAddressType',
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
