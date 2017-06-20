# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # A metric availability value.
    #
    class MetricAvailability

      include MsRestAzure

      # @return [String] The length of retention for the database metric.
      attr_accessor :retention

      # @return [String] The granularity of the database metric.
      attr_accessor :time_grain


      #
      # Mapper for MetricAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricAvailability',
          type: {
            name: 'Composite',
            class_name: 'MetricAvailability',
            model_properties: {
              retention: {
                required: false,
                read_only: true,
                serialized_name: 'retention',
                type: {
                  name: 'String'
                }
              },
              time_grain: {
                required: false,
                read_only: true,
                serialized_name: 'timeGrain',
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
