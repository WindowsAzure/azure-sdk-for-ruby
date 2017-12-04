# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2016_09_30
  module Models
    #
    # Container service.
    #
    class ContainerService < Resource

      include MsRestAzure

      # @return [String] the current deployment or provisioning state, which
      # only appears in the response.
      attr_accessor :provisioning_state

      # @return [ContainerServiceOrchestratorProfile] Properties of the
      # orchestrator.
      attr_accessor :orchestrator_profile

      # @return [ContainerServiceCustomProfile] Properties for custom clusters.
      attr_accessor :custom_profile

      # @return [ContainerServiceServicePrincipalProfile] Properties for
      # cluster service principals.
      attr_accessor :service_principal_profile

      # @return [ContainerServiceMasterProfile] Properties of master agents.
      attr_accessor :master_profile

      # @return [Array<ContainerServiceAgentPoolProfile>] Properties of the
      # agent pool.
      attr_accessor :agent_pool_profiles

      # @return [ContainerServiceWindowsProfile] Properties of Windows VMs.
      attr_accessor :windows_profile

      # @return [ContainerServiceLinuxProfile] Properties of Linux VMs.
      attr_accessor :linux_profile

      # @return [ContainerServiceDiagnosticsProfile] Properties of the
      # diagnostic agent.
      attr_accessor :diagnostics_profile


      #
      # Mapper for ContainerService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerService',
          type: {
            name: 'Composite',
            class_name: 'ContainerService',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              orchestrator_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.orchestratorProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceOrchestratorProfile'
                }
              },
              custom_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceCustomProfile'
                }
              },
              service_principal_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.servicePrincipalProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceServicePrincipalProfile'
                }
              },
              master_profile: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.masterProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceMasterProfile'
                }
              },
              agent_pool_profiles: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.agentPoolProfiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContainerServiceAgentPoolProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerServiceAgentPoolProfile'
                      }
                  }
                }
              },
              windows_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.windowsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceWindowsProfile'
                }
              },
              linux_profile: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.linuxProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceLinuxProfile'
                }
              },
              diagnostics_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diagnosticsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceDiagnosticsProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end
