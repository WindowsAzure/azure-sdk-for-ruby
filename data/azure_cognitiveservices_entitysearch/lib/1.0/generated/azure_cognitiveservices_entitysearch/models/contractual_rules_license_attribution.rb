# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Defines a contractual rule for license attribution.
    #
    class ContractualRulesLicenseAttribution < ContractualRulesAttribution

      include MsRestAzure


      def initialize
        @_type = "ContractualRules/LicenseAttribution"
      end

      attr_accessor :_type

      # @return [License] The license under which the content may be used.
      attr_accessor :license

      # @return [String] The license to display next to the targeted field.
      attr_accessor :license_notice


      #
      # Mapper for ContractualRulesLicenseAttribution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContractualRules/LicenseAttribution',
          type: {
            name: 'Composite',
            class_name: 'ContractualRulesLicenseAttribution',
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
              license: {
                required: false,
                read_only: true,
                serialized_name: 'license',
                type: {
                  name: 'Composite',
                  class_name: 'License'
                }
              },
              license_notice: {
                required: false,
                read_only: true,
                serialized_name: 'licenseNotice',
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
