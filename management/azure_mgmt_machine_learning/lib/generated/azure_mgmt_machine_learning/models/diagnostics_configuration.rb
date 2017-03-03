# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # Diagnostics settings for an Azure ML web service.
    #
    class DiagnosticsConfiguration

      include MsRestAzure

      # @return [DiagnosticsLevel] Specifies the verbosity of the diagnostic
      # output. Valid values are: None - disables tracing; Error - collects
      # only error (stderr) traces; All - collects all traces (stdout and
      # stderr). Possible values include: 'None', 'Error', 'All'
      attr_accessor :level

      # @return [DateTime] Specifies the date and time when the logging will
      # cease. If null, diagnostic collection is not time limited.
      attr_accessor :expiry


      #
      # Mapper for DiagnosticsConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticsConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticsConfiguration',
            model_properties: {
              level: {
                required: true,
                serialized_name: 'level',
                type: {
                  name: 'String'
                }
              },
              expiry: {
                required: false,
                serialized_name: 'expiry',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
