# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Defines a contractual rule for text attribution.
    #
    class ContractualRulesTextAttribution < ContractualRulesAttribution

      include MsRestAzure


      def initialize
        @_type = "ContractualRules/TextAttribution"
      end

      attr_accessor :_type

      # @return [String] The attribution text. Text attribution applies to the
      # entity as a whole and should be displayed immediately following the
      # entity presentation. If there are multiple text or link attribution
      # rules that do not specify a target, you should concatenate them and
      # display them using a "Data from:" label.
      attr_accessor :text

      # @return [Boolean] Indicates whether this provider's attribution is
      # optional.
      attr_accessor :optional_for_list_display


      #
      # Mapper for ContractualRulesTextAttribution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContractualRules/TextAttribution',
          type: {
            name: 'Composite',
            class_name: 'ContractualRulesTextAttribution',
            model_properties: {
              target_property_name: {
                required: false,
                read_only: true,
                serialized_name: 'targetPropertyName',
                type: {
                  name: 'String'
                }
              },
              _type: {
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              must_be_close_to_content: {
                required: false,
                read_only: true,
                serialized_name: 'mustBeCloseToContent',
                type: {
                  name: 'Boolean'
                }
              },
              text: {
                required: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              optional_for_list_display: {
                required: false,
                read_only: true,
                serialized_name: 'optionalForListDisplay',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
