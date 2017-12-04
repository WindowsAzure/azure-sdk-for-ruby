# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2016_09_01
  module Models
    #
    # Part of MultiTenantDiagnosticSettings. Specifies the settings for a
    # particular metric.
    #
    class MetricSettings

      include MsRestAzure

      # @return [Duration] the timegrain of the metric in ISO8601 format.
      attr_accessor :time_grain

      # @return [Boolean] a value indicating whether this timegrain is enabled.
      attr_accessor :enabled

      # @return [RetentionPolicy] the retention policy for this timegrain.
      attr_accessor :retention_policy


      #
      # Mapper for MetricSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricSettings',
          type: {
            name: 'Composite',
            class_name: 'MetricSettings',
            model_properties: {
              time_grain: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeGrain',
                type: {
                  name: 'TimeSpan'
                }
              },
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              retention_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
