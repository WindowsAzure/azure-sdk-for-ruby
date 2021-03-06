# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_07_01_preview
  module Models
    #
    # A list of rules results.
    #
    class RulesResults

      include MsRestAzure

      # @return [Array<RuleResults>] List of rule results.
      attr_accessor :value


      #
      # Mapper for RulesResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RulesResults',
          type: {
            name: 'Composite',
            class_name: 'RulesResults',
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
                      serialized_name: 'RuleResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RuleResults'
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
