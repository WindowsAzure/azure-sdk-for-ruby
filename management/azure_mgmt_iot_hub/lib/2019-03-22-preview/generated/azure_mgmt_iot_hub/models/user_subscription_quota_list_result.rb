# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # Json-serialized array of User subscription quota response
    #
    class UserSubscriptionQuotaListResult

      include MsRestAzure

      # @return [Array<UserSubscriptionQuota>]
      attr_accessor :value

      # @return [String]
      attr_accessor :next_link


      #
      # Mapper for UserSubscriptionQuotaListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserSubscriptionQuotaListResult',
          type: {
            name: 'Composite',
            class_name: 'UserSubscriptionQuotaListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserSubscriptionQuotaElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserSubscriptionQuota'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
