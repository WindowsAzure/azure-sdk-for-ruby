# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The response to a list data masking rules request.
    #
    class DataMaskingRuleListResult

      include MsRestAzure

      # @return [Array<DataMaskingRule>] The list of database data masking
      # rules.
      attr_accessor :value


      #
      # Mapper for DataMaskingRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataMaskingRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'DataMaskingRuleListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DataMaskingRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataMaskingRule'
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
