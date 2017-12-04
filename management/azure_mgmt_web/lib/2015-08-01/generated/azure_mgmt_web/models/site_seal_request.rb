# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Site seal request.
    #
    class SiteSealRequest

      include MsRestAzure

      # @return [Boolean] If <code>true</code> use the light color theme for
      # site seal; otherwise, use the default color theme.
      attr_accessor :light_theme

      # @return [String] Locale of site seal.
      attr_accessor :locale


      #
      # Mapper for SiteSealRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteSealRequest',
          type: {
            name: 'Composite',
            class_name: 'SiteSealRequest',
            model_properties: {
              light_theme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lightTheme',
                type: {
                  name: 'Boolean'
                }
              },
              locale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locale',
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
