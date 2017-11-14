# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A database query.
    #
    class QueryMetric

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the metric
      attr_accessor :name

      # @return [String] The name of the metric for display in user interface
      attr_accessor :display_name

      # @return [QueryMetricUnit] The unit of measurement. Possible values
      # include: 'percentage', 'KB', 'microseconds'
      attr_accessor :unit

      # @return [Float] The measured value
      attr_accessor :value


      #
      # Mapper for QueryMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryMetric',
          type: {
            name: 'Composite',
            class_name: 'QueryMetric',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'Enum',
                  module: 'QueryMetricUnit'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
