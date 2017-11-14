# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class MetricAvailability

      include MsRestAzure

      include MsRest::JSONable
      # @return [String]
      attr_accessor :time_grain

      # @return [String]
      attr_accessor :blob_duration


      #
      # Mapper for MetricAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricAvailability',
          type: {
            name: 'Composite',
            class_name: 'MetricAvailability',
            model_properties: {
              time_grain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              blob_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobDuration',
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
