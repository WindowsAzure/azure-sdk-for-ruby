# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_09_01
  module Models
    #
    # Response for ApplicationGatewayAvailableSslOptions API service call.
    #
    class ApplicationGatewayAvailableSslOptions < Resource

      include MsRestAzure

      # @return [Array<SubResource>] List of available Ssl predefined policy.
      attr_accessor :predefined_policies

      # @return [ApplicationGatewaySslPolicyName] Name of the Ssl predefined
      # policy applied by default to application gateway. Possible values
      # include: 'AppGwSslPolicy20150501', 'AppGwSslPolicy20170401',
      # 'AppGwSslPolicy20170401S'
      attr_accessor :default_policy

      # @return [Array<ApplicationGatewaySslCipherSuite>] List of available Ssl
      # cipher suites.
      attr_accessor :available_cipher_suites

      # @return [Array<ApplicationGatewaySslProtocol>] List of available Ssl
      # protocols.
      attr_accessor :available_protocols


      #
      # Mapper for ApplicationGatewayAvailableSslOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayAvailableSslOptions',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayAvailableSslOptions',
            model_properties: {
              id: {
                required: false,
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              predefined_policies: {
                required: false,
                serialized_name: 'properties.predefinedPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              default_policy: {
                required: false,
                serialized_name: 'properties.defaultPolicy',
                type: {
                  name: 'String'
                }
              },
              available_cipher_suites: {
                required: false,
                serialized_name: 'properties.availableCipherSuites',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewaySslCipherSuiteElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              available_protocols: {
                required: false,
                serialized_name: 'properties.availableProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewaySslProtocolElementType',
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
