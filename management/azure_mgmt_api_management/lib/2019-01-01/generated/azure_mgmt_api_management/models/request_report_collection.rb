# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Paged Report records list representation.
    #
    class RequestReportCollection

      include MsRestAzure

      # @return [Array<RequestReportRecordContract>] Page values.
      attr_accessor :value

      # @return [Integer] Total record count number across all pages.
      attr_accessor :count


      #
      # Mapper for RequestReportCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestReportCollection',
          type: {
            name: 'Composite',
            class_name: 'RequestReportCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RequestReportRecordContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RequestReportRecordContract'
                      }
                  }
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
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
