# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the Create subscription operation.
    #
    class SubscriptionCreateParameters

      include MsRestAzure

      # @return [String] User (user id path) for whom subscription is being
      # created in form /users/{uid}
      attr_accessor :user_id

      # @return [String] Product (product id path) for which subscription is
      # being created in form /products/{productId}
      attr_accessor :product_id

      # @return [String] Subscription name.
      attr_accessor :name

      # @return [String] Primary subscription key. If not specified during
      # request key will be generated automatically.
      attr_accessor :primary_key

      # @return [String] Secondary subscription key. If not specified during
      # request key will be generated automatically.
      attr_accessor :secondary_key

      # @return [SubscriptionStateContract] Initial subscription state. If no
      # value is specified, subscription is created with Submitted state.
      # Possible states are * active – the subscription is active, * suspended
      # – the subscription is blocked, and the subscriber cannot call any APIs
      # of the product, * submitted – the subscription request has been made by
      # the developer, but has not yet been approved or rejected, * rejected –
      # the subscription request has been denied by an administrator, *
      # cancelled – the subscription has been cancelled by the developer or
      # administrator, * expired – the subscription reached its expiration date
      # and was deactivated. Possible values include: 'Suspended', 'Active',
      # 'Expired', 'Submitted', 'Rejected', 'Cancelled'
      attr_accessor :state


      #
      # Mapper for SubscriptionCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubscriptionCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionCreateParameters',
            model_properties: {
              user_id: {
                required: true,
                serialized_name: 'userId',
                type: {
                  name: 'String'
                }
              },
              product_id: {
                required: true,
                serialized_name: 'productId',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                required: false,
                serialized_name: 'primaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                serialized_name: 'secondaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'SubscriptionStateContract'
                }
              }
            }
          }
        }
      end
    end
  end
end
