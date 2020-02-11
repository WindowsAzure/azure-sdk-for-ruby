# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Structure of command payload.
    #
    class DataFlowDebugCommandPayload

      include MsRestAzure

      # @return [String] The stream name which is used for preview.
      attr_accessor :stream_name

      # @return [Integer] Row limits for preview response.
      attr_accessor :row_limits

      # @return [Array<String>] Array of column names.
      attr_accessor :columns

      # @return [String] The expression which is used for preview.
      attr_accessor :expression


      #
      # Mapper for DataFlowDebugCommandPayload class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataFlowDebugCommandPayload',
          type: {
            name: 'Composite',
            class_name: 'DataFlowDebugCommandPayload',
            model_properties: {
              stream_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'streamName',
                type: {
                  name: 'String'
                }
              },
              row_limits: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rowLimits',
                type: {
                  name: 'Number'
                }
              },
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              expression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expression',
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
