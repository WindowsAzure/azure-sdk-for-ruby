# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # Specifies the metric alert criteria for a single resource that has
    # multiple metric criteria.
    #
    class MetricAlertSingleResourceMultipleMetricCriteria < MetricAlertCriteria

      include MsRestAzure


      def initialize
        @odatatype = "Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria"
      end

      attr_accessor :odatatype

      # @return [Array<MetricCriteria>] The list of metric criteria for this
      # 'all of' operation.
      attr_accessor :all_of


      #
      # Mapper for MetricAlertSingleResourceMultipleMetricCriteria class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria',
          type: {
            name: 'Composite',
            class_name: 'MetricAlertSingleResourceMultipleMetricCriteria',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              all_of: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allOf',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricCriteriaElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricCriteria'
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