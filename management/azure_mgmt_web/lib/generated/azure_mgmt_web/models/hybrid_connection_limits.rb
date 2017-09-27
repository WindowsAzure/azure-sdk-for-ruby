# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Hybrid Connection limits contract. This is used to return the plan limits
    # of Hybrid Connections.
    #
    class HybridConnectionLimits < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The current number of Hybrid Connections.
      attr_accessor :current

      # @return [Integer] The maximum number of Hybrid Connections allowed.
      attr_accessor :maximum


      #
      # Mapper for HybridConnectionLimits class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HybridConnectionLimits',
          type: {
            name: 'Composite',
            class_name: 'HybridConnectionLimits',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              current: {
                required: false,
                read_only: true,
                serialized_name: 'properties.current',
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maximum',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
