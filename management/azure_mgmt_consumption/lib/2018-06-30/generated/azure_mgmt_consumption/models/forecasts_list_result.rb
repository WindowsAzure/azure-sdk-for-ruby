# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_06_30
  module Models
    #
    # Result of listing forecasts. It contains a list of available forecasts.
    #
    class ForecastsListResult

      include MsRestAzure

      # @return [Array<Forecast>] The list of forecasts.
      attr_accessor :value


      #
      # Mapper for ForecastsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ForecastsListResult',
          type: {
            name: 'Composite',
            class_name: 'ForecastsListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ForecastElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Forecast'
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
