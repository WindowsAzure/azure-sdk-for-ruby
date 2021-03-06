# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Defines contents of a web application firewall global configuration
    #
    class PolicySettings

      include MsRestAzure

      # @return [PolicyEnabledState] describes if the policy is in enabled
      # state or disabled state. Possible values include: 'Disabled', 'Enabled'
      attr_accessor :enabled_state

      # @return [PolicyMode] Describes if it is in detection mode or prevention
      # mode at policy level. Possible values include: 'Prevention',
      # 'Detection'
      attr_accessor :mode

      # @return [String] If action type is redirect, this field represents the
      # default redirect URL for the client.
      attr_accessor :default_redirect_url

      # @return [Integer] If the action type is block, this field defines the
      # default customer overridable http response status code.
      attr_accessor :default_custom_block_response_status_code

      # @return [String] If the action type is block, customer can override the
      # response body. The body must be specified in base64 encoding.
      attr_accessor :default_custom_block_response_body


      #
      # Mapper for PolicySettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'policySettings',
          type: {
            name: 'Composite',
            class_name: 'PolicySettings',
            model_properties: {
              enabled_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabledState',
                type: {
                  name: 'String'
                }
              },
              mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mode',
                type: {
                  name: 'String'
                }
              },
              default_redirect_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultRedirectUrl',
                type: {
                  name: 'String'
                }
              },
              default_custom_block_response_status_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultCustomBlockResponseStatusCode',
                type: {
                  name: 'Number'
                }
              },
              default_custom_block_response_body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultCustomBlockResponseBody',
                constraints: {
                  Pattern: '^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{4})$'
                },
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
