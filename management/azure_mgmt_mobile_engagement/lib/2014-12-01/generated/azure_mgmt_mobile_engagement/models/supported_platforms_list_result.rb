# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class SupportedPlatformsListResult

      include MsRestAzure

      # @return [Array<String>] List of supported platforms.
      attr_accessor :platforms


      #
      # Mapper for SupportedPlatformsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SupportedPlatformsListResult',
          type: {
            name: 'Composite',
            class_name: 'SupportedPlatformsListResult',
            model_properties: {
              platforms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platforms',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
