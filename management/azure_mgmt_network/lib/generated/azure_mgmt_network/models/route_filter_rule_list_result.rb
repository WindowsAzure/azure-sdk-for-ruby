# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Response for the ListRouteFilterRules API service call
    #
    class RouteFilterRuleListResult
      # @return [Array<RouteFilterRule>] Gets a list of RouteFilterRules in a
      # resource group.
      attr_accessor :value

      # @return [String] The URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for RouteFilterRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RouteFilterRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'RouteFilterRuleListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RouteFilterRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RouteFilterRule'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
