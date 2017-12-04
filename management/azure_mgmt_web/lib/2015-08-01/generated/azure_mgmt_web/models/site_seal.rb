# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Site seal
    #
    class SiteSeal

      include MsRestAzure

      # @return [String] HTML snippet
      attr_accessor :html


      #
      # Mapper for SiteSeal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteSeal',
          type: {
            name: 'Composite',
            class_name: 'SiteSeal',
            model_properties: {
              html: {
                client_side_validation: true,
                required: true,
                serialized_name: 'html',
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
