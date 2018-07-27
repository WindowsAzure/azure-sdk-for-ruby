# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Recovery plan custom details.
    #
    class RecoveryPlanProperties

      include MsRestAzure

      # @return [String] The friendly name.
      attr_accessor :friendly_name

      # @return [String] The primary fabric Id.
      attr_accessor :primary_fabric_id

      # @return [String] The primary fabric friendly name.
      attr_accessor :primary_fabric_friendly_name

      # @return [String] The recovery fabric Id.
      attr_accessor :recovery_fabric_id

      # @return [String] The recovery fabric friendly name.
      attr_accessor :recovery_fabric_friendly_name

      # @return [String] The failover deployment model.
      attr_accessor :failover_deployment_model

      # @return [Array<String>] The list of replication providers.
      attr_accessor :replication_providers

      # @return [Array<String>] The list of allowed operations.
      attr_accessor :allowed_operations

      # @return [DateTime] The start time of the last planned failover.
      attr_accessor :last_planned_failover_time

      # @return [DateTime] The start time of the last unplanned failover.
      attr_accessor :last_unplanned_failover_time

      # @return [DateTime] The start time of the last test failover.
      attr_accessor :last_test_failover_time

      # @return [CurrentScenarioDetails] The current scenario details.
      attr_accessor :current_scenario

      # @return [String] The recovery plan status.
      attr_accessor :current_scenario_status

      # @return [String] The recovery plan status description.
      attr_accessor :current_scenario_status_description

      # @return [Array<RecoveryPlanGroup>] The recovery plan groups.
      attr_accessor :groups


      #
      # Mapper for RecoveryPlanProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoveryPlanProperties',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanProperties',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              primary_fabric_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryFabricId',
                type: {
                  name: 'String'
                }
              },
              primary_fabric_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryFabricFriendlyName',
                type: {
                  name: 'String'
                }
              },
              recovery_fabric_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryFabricId',
                type: {
                  name: 'String'
                }
              },
              recovery_fabric_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryFabricFriendlyName',
                type: {
                  name: 'String'
                }
              },
              failover_deployment_model: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failoverDeploymentModel',
                type: {
                  name: 'String'
                }
              },
              replication_providers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicationProviders',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              allowed_operations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedOperations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              last_planned_failover_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastPlannedFailoverTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_unplanned_failover_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastUnplannedFailoverTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_test_failover_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastTestFailoverTime',
                type: {
                  name: 'DateTime'
                }
              },
              current_scenario: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentScenario',
                type: {
                  name: 'Composite',
                  class_name: 'CurrentScenarioDetails'
                }
              },
              current_scenario_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentScenarioStatus',
                type: {
                  name: 'String'
                }
              },
              current_scenario_status_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentScenarioStatusDescription',
                type: {
                  name: 'String'
                }
              },
              groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecoveryPlanGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPlanGroup'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
