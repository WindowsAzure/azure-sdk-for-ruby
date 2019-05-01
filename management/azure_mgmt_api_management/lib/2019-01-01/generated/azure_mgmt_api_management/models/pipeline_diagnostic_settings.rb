# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
    #
    class PipelineDiagnosticSettings

      include MsRestAzure

      # @return [HttpMessageDiagnostic] Diagnostic settings for request.
      attr_accessor :request

      # @return [HttpMessageDiagnostic] Diagnostic settings for response.
      attr_accessor :response


      #
      # Mapper for PipelineDiagnosticSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PipelineDiagnosticSettings',
          type: {
            name: 'Composite',
            class_name: 'PipelineDiagnosticSettings',
            model_properties: {
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'HttpMessageDiagnostic'
                }
              },
              response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'response',
                type: {
                  name: 'Composite',
                  class_name: 'HttpMessageDiagnostic'
                }
              }
            }
          }
        }
      end
    end
  end
end
