# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Format read settings.
    #
    class FormatReadSettings

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["DelimitedTextReadSettings"] = "DelimitedTextReadSettings"

      def initialize
        @type = "FormatReadSettings"
      end

      attr_accessor :type

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties


      #
      # Mapper for FormatReadSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FormatReadSettings',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'FormatReadSettings',
            class_name: 'FormatReadSettings',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
