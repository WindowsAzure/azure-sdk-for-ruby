# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes the parameters for updating a rolling upgrade of application or
    # cluster.
    #
    class RollingUpgradeUpdateDescription

      include MsRestAzure

      # @return [UpgradeMode] The mode used to monitor health during a rolling
      # upgrade. The values are UnmonitoredAuto, UnmonitoredManual, and
      # Monitored. Possible values include: 'Invalid', 'UnmonitoredAuto',
      # 'UnmonitoredManual', 'Monitored'. Default value: 'UnmonitoredAuto' .
      attr_accessor :rolling_upgrade_mode

      # @return [Boolean] If true, then processes are forcefully restarted
      # during upgrade even when the code version has not changed (the upgrade
      # only changes configuration or data).
      attr_accessor :force_restart

      # @return [Integer] The maximum amount of time to block processing of an
      # upgrade domain and prevent loss of availability when there are
      # unexpected issues. When this timeout expires, processing of the upgrade
      # domain will proceed regardless of availability loss issues. The timeout
      # is reset at the start of each upgrade domain. Valid values are between
      # 0 and 42949672925 inclusive. (unsigned 32-bit integer).
      attr_accessor :replica_set_check_timeout_in_milliseconds

      # @return [FailureAction] The compensating action to perform when a
      # Monitored upgrade encounters monitoring policy or health policy
      # violations.
      # Invalid indicates the failure action is invalid. Rollback specifies
      # that the upgrade will start rolling back automatically.
      # Manual indicates that the upgrade will switch to UnmonitoredManual
      # upgrade mode. Possible values include: 'Invalid', 'Rollback', 'Manual'
      attr_accessor :failure_action

      # @return [String] The amount of time to wait after completing an upgrade
      # domain before applying health policies. It is first interpreted as a
      # string representing an ISO 8601 duration. If that fails, then it is
      # interpreted as a number representing the total number of milliseconds.
      attr_accessor :health_check_wait_duration_in_milliseconds

      # @return [String] The amount of time that the application or cluster
      # must remain healthy before the upgrade proceeds to the next upgrade
      # domain. It is first interpreted as a string representing an ISO 8601
      # duration. If that fails, then it is interpreted as a number
      # representing the total number of milliseconds.
      attr_accessor :health_check_stable_duration_in_milliseconds

      # @return [String] The amount of time to retry health evaluation when the
      # application or cluster is unhealthy before FailureAction is executed.
      # It is first interpreted as a string representing an ISO 8601 duration.
      # If that fails, then it is interpreted as a number representing the
      # total number of milliseconds.
      attr_accessor :health_check_retry_timeout_in_milliseconds

      # @return [String] The amount of time the overall upgrade has to complete
      # before FailureAction is executed. It is first interpreted as a string
      # representing an ISO 8601 duration. If that fails, then it is
      # interpreted as a number representing the total number of milliseconds.
      attr_accessor :upgrade_timeout_in_milliseconds

      # @return [String] The amount of time each upgrade domain has to complete
      # before FailureAction is executed. It is first interpreted as a string
      # representing an ISO 8601 duration. If that fails, then it is
      # interpreted as a number representing the total number of milliseconds.
      attr_accessor :upgrade_domain_timeout_in_milliseconds


      #
      # Mapper for RollingUpgradeUpdateDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RollingUpgradeUpdateDescription',
          type: {
            name: 'Composite',
            class_name: 'RollingUpgradeUpdateDescription',
            model_properties: {
              rolling_upgrade_mode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'RollingUpgradeMode',
                default_value: 'UnmonitoredAuto',
                type: {
                  name: 'String'
                }
              },
              force_restart: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ForceRestart',
                type: {
                  name: 'Boolean'
                }
              },
              replica_set_check_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaSetCheckTimeoutInMilliseconds',
                type: {
                  name: 'Number'
                }
              },
              failure_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FailureAction',
                type: {
                  name: 'String'
                }
              },
              health_check_wait_duration_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthCheckWaitDurationInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              health_check_stable_duration_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthCheckStableDurationInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              health_check_retry_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthCheckRetryTimeoutInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              upgrade_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeTimeoutInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              upgrade_domain_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomainTimeoutInMilliseconds',
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
