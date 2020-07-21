# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # The origin group for CDN content which is added when creating a CDN
    # endpoint. Traffic is sent to the origins within the origin group based on
    # origin health.
    #
    class DeepCreatedOriginGroup

      include MsRestAzure

      # @return [String] Origin group name which must be unique within the
      # endpoint.
      attr_accessor :name

      # @return [HealthProbeParameters] Health probe settings to the origin
      # that is used to determine the health of the origin.
      attr_accessor :health_probe_settings

      # @return [Array<ResourceReference>] The source of the content being
      # delivered via CDN within given origin group.
      attr_accessor :origins

      # @return [Integer] Time in minutes to shift the traffic to the endpoint
      # gradually when an unhealthy endpoint comes healthy or a new endpoint is
      # added. Default is 10 mins. This property is currently not supported.
      attr_accessor :traffic_restoration_time_to_healed_or_new_endpoints_in_minutes

      # @return [ResponseBasedOriginErrorDetectionParameters] The JSON object
      # that contains the properties to determine origin health using real
      # requests/responses.This property is currently not supported.
      attr_accessor :response_based_origin_error_detection_settings


      #
      # Mapper for DeepCreatedOriginGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeepCreatedOriginGroup',
          type: {
            name: 'Composite',
            class_name: 'DeepCreatedOriginGroup',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              health_probe_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.healthProbeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'HealthProbeParameters'
                }
              },
              origins: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.origins',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceReference'
                      }
                  }
                }
              },
              traffic_restoration_time_to_healed_or_new_endpoints_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.trafficRestorationTimeToHealedOrNewEndpointsInMinutes',
                constraints: {
                  InclusiveMaximum: 50,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              response_based_origin_error_detection_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.responseBasedOriginErrorDetectionSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ResponseBasedOriginErrorDetectionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
