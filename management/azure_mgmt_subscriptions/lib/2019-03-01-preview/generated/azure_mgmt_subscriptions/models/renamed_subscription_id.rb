# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Subscriptions::Mgmt::V2019_03_01_preview
  module Models
    #
    # The ID of the subscriptions that is being renamed
    #
    class RenamedSubscriptionId

      include MsRestAzure

      # @return [String] The ID of the subscriptions that is being renamed
      attr_accessor :value


      #
      # Mapper for RenamedSubscriptionId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RenamedSubscriptionId',
          type: {
            name: 'Composite',
            class_name: 'RenamedSubscriptionId',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
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
