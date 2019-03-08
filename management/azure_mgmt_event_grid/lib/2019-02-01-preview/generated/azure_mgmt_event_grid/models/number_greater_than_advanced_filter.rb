# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # NumberGreaterThan Advanced Filter.
    #
    class NumberGreaterThanAdvancedFilter < AdvancedFilter

      include MsRestAzure


      def initialize
        @operatorType = "NumberGreaterThan"
      end

      attr_accessor :operatorType

      # @return [Float] The filter value.
      attr_accessor :value


      #
      # Mapper for NumberGreaterThanAdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NumberGreaterThan',
          type: {
            name: 'Composite',
            class_name: 'NumberGreaterThanAdvancedFilter',
            model_properties: {
              key: {
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              operatorType: {
                required: true,
                serialized_name: 'operatorType',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
