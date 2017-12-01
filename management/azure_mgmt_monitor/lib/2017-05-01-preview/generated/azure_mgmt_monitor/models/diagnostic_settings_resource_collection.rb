# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Represents a collection of alert rule resources.
    #
    class DiagnosticSettingsResourceCollection

      include MsRestAzure

      # @return [Array<DiagnosticSettingsResource>] The collection of
      # diagnostic settings resources;.
      attr_accessor :value


      #
      # Mapper for DiagnosticSettingsResourceCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticSettingsResourceCollection',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticSettingsResourceCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DiagnosticSettingsResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiagnosticSettingsResource'
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
