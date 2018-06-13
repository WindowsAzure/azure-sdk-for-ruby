# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # User-defined filters to return data which will be purged from the table.
    #
    class WorkspacePurgeBodyFilters

      include MsRestAzure

      # @return [String] The column of the table over which the given query
      # should run
      attr_accessor :column

      # @return [String] A query operator to evaluate over the provided column
      # and value(s).
      attr_accessor :operator

      # @return the value for the operator to function over. This can be a
      # number (e.g., > 100), a string (timestamp >= '2017-09-01') or array of
      # values.
      attr_accessor :value


      #
      # Mapper for WorkspacePurgeBodyFilters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkspacePurgeBodyFilters',
          type: {
            name: 'Composite',
            class_name: 'WorkspacePurgeBodyFilters',
            model_properties: {
              column: {
                required: false,
                serialized_name: 'column',
                type: {
                  name: 'String'
                }
              },
              operator: {
                required: false,
                serialized_name: 'operator',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
