# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the cache expiration action for the delivery rule.
    #
    class DeliveryRuleCacheExpirationAction < DeliveryRuleAction

      include MsRestAzure


      def initialize
        @name = "CacheExpiration"
      end

      attr_accessor :name

      # @return [CacheExpirationActionParameters] Defines the parameters for
      # the action.
      attr_accessor :parameters


      #
      # Mapper for DeliveryRuleCacheExpirationAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CacheExpiration',
          type: {
            name: 'Composite',
            class_name: 'DeliveryRuleCacheExpirationAction',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'CacheExpirationActionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
