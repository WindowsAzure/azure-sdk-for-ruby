# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Model object.
    #
    #
    class PremiumMessagingRegionsProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Region code
      attr_accessor :code

      # @return [String] Full name of the region
      attr_accessor :full_name


      #
      # Mapper for PremiumMessagingRegionsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PremiumMessagingRegions_properties',
          type: {
            name: 'Composite',
            class_name: 'PremiumMessagingRegionsProperties',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              full_name: {
                required: false,
                read_only: true,
                serialized_name: 'fullName',
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
