# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2017_12_12_preview
  module Models
    #
    # Additional parameters for a set of operations.
    #
    class QueryOptions

      include MsRestAzure

      # @return [Integer] Maximum number of records to return.
      attr_accessor :top

      # @return [String] Ordering expression using OData notation. One or more
      # comma-separated column names with an optional "desc" (the default) or
      # "asc", e.g. "$orderby=PolicyAssignmentId, ResourceId asc".
      attr_accessor :order_by

      # @return [String] Select expression using OData notation. Limits the
      # columns on each record to just those requested, e.g.
      # "$select=PolicyAssignmentId, ResourceId".
      attr_accessor :select

      # @return [DateTime] ISO 8601 formatted timestamp specifying the start
      # time of the interval to query. When not specified, the service uses
      # ($to - 1-day).
      attr_accessor :from

      # @return [DateTime] ISO 8601 formatted timestamp specifying the end time
      # of the interval to query. When not specified, the service uses request
      # time.
      attr_accessor :to

      # @return [String] OData filter expression.
      attr_accessor :filter

      # @return [String] OData apply expression for aggregations.
      attr_accessor :apply


      #
      # Mapper for QueryOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          type: {
            name: 'Composite',
            class_name: 'QueryOptions',
            model_properties: {
              top: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Number'
                }
              },
              order_by: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'String'
                }
              },
              select: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'String'
                }
              },
              from: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'DateTime'
                }
              },
              to: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'DateTime'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'String'
                }
              },
              apply: {
                client_side_validation: true,
                required: false,
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
