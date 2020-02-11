# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Response body structure of data flow result for data preview, statistics
    # or expression preview.
    #
    class DataFlowDebugCommandResponse

      include MsRestAzure

      # @return [String] The run status of data preview, statistics or
      # expression preview.
      attr_accessor :status

      # @return [String] The result data of data preview, statistics or
      # expression preview.
      attr_accessor :data


      #
      # Mapper for DataFlowDebugCommandResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataFlowDebugCommandResponse',
          type: {
            name: 'Composite',
            class_name: 'DataFlowDebugCommandResponse',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'data',
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
