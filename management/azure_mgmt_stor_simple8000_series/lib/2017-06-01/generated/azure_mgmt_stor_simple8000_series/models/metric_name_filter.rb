# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The metric name filter, specifying the name of the metric to be filtered
    # on.
    #
    class MetricNameFilter

      include MsRestAzure

      # @return [String] Specifies the metric name to be filtered on. E.g.,
      # CloudStorageUsed. Valid values are the ones returned in the field
      # "name" in the ListMetricDefinitions call. Only 'Equality' operator is
      # supported for this property.
      attr_accessor :value


      #
      # Mapper for MetricNameFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricNameFilter',
          type: {
            name: 'Composite',
            class_name: 'MetricNameFilter',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
