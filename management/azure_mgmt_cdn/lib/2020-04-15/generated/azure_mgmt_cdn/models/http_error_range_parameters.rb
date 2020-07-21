# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # The JSON object that represents the range for http status codes
    #
    class HttpErrorRangeParameters

      include MsRestAzure

      # @return [Integer] The inclusive start of the http status code range.
      attr_accessor :begin_property

      # @return [Integer] The inclusive end of the http status code range.
      attr_accessor :end_property


      #
      # Mapper for HttpErrorRangeParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpErrorRangeParameters',
          type: {
            name: 'Composite',
            class_name: 'HttpErrorRangeParameters',
            model_properties: {
              begin_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'begin',
                constraints: {
                  InclusiveMaximum: 999,
                  InclusiveMinimum: 100
                },
                type: {
                  name: 'Number'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                constraints: {
                  InclusiveMaximum: 999,
                  InclusiveMinimum: 100
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
