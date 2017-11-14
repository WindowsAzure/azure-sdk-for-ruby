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
    class DeviceLocation

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ISO 3166 two-letter country code.
      attr_accessor :countrycode

      # @return [String] An administrative region of the nation, such as a
      # state or province.
      attr_accessor :region

      # @return [String] A locality within the administrative region, such as a
      # town or city.
      attr_accessor :locality


      #
      # Mapper for DeviceLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeviceLocation',
          type: {
            name: 'Composite',
            class_name: 'DeviceLocation',
            model_properties: {
              countrycode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'countrycode',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              locality: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locality',
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
