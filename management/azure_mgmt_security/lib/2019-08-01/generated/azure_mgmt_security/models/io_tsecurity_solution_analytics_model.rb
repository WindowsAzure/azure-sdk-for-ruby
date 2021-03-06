# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # Security analytics of your IoT Security solution
    #
    class IoTSecuritySolutionAnalyticsModel < Resource

      include MsRestAzure

      # @return [IoTSeverityMetrics] Security analytics of your IoT Security
      # solution.
      attr_accessor :metrics

      # @return [Integer] Number of unhealthy devices within your IoT Security
      # solution.
      attr_accessor :unhealthy_device_count

      # @return
      # [Array<IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem>]
      # List of device metrics by the aggregation date.
      attr_accessor :devices_metrics

      # @return [Array<IoTSecurityAlertedDevice>] List of the 3 devices with
      # the most alerts.
      attr_accessor :top_alerted_devices

      # @return [Array<IoTSecurityDeviceAlert>] List of the 3 most prevalent
      # device alerts.
      attr_accessor :most_prevalent_device_alerts

      # @return [Array<IoTSecurityDeviceRecommendation>] List of the 3 most
      # prevalent device recommendations.
      attr_accessor :most_prevalent_device_recommendations


      #
      # Mapper for IoTSecuritySolutionAnalyticsModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTSecuritySolutionAnalyticsModel',
          type: {
            name: 'Composite',
            class_name: 'IoTSecuritySolutionAnalyticsModel',
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
              metrics: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.metrics',
                type: {
                  name: 'Composite',
                  class_name: 'IoTSeverityMetrics'
                }
              },
              unhealthy_device_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unhealthyDeviceCount',
                type: {
                  name: 'Number'
                }
              },
              devices_metrics: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.devicesMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem'
                      }
                  }
                }
              },
              top_alerted_devices: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.topAlertedDevices',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IoTSecurityAlertedDeviceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecurityAlertedDevice'
                      }
                  }
                }
              },
              most_prevalent_device_alerts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mostPrevalentDeviceAlerts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IoTSecurityDeviceAlertElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecurityDeviceAlert'
                      }
                  }
                }
              },
              most_prevalent_device_recommendations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mostPrevalentDeviceRecommendations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IoTSecurityDeviceRecommendationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecurityDeviceRecommendation'
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
