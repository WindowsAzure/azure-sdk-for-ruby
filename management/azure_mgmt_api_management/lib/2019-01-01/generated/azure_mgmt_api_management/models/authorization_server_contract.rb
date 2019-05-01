# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # External OAuth authorization server settings.
    #
    class AuthorizationServerContract < Resource

      include MsRestAzure

      # @return [String] Description of the authorization server. Can contain
      # HTML formatting tags.
      attr_accessor :description

      # @return [Array<AuthorizationMethod>] HTTP verbs supported by the
      # authorization endpoint. GET must be always present. POST is optional.
      attr_accessor :authorization_methods

      # @return [Array<ClientAuthenticationMethod>] Method of authentication
      # supported by the token endpoint of this authorization server. Possible
      # values are Basic and/or Body. When Body is specified, client
      # credentials and other parameters are passed within the request body in
      # the application/x-www-form-urlencoded format.
      attr_accessor :client_authentication_method

      # @return [Array<TokenBodyParameterContract>] Additional parameters
      # required by the token endpoint of this authorization server represented
      # as an array of JSON objects with name and value string properties, i.e.
      # {"name" : "name value", "value": "a value"}.
      attr_accessor :token_body_parameters

      # @return [String] OAuth token endpoint. Contains absolute URI to entity
      # being referenced.
      attr_accessor :token_endpoint

      # @return [Boolean] If true, authorization server will include state
      # parameter from the authorization request to its response. Client may
      # use state parameter to raise protocol security.
      attr_accessor :support_state

      # @return [String] Access token scope that is going to be requested by
      # default. Can be overridden at the API level. Should be provided in the
      # form of a string containing space-delimited values.
      attr_accessor :default_scope

      # @return [Array<BearerTokenSendingMethod>] Specifies the mechanism by
      # which access token is passed to the API.
      attr_accessor :bearer_token_sending_methods

      # @return [String] Client or app secret registered with this
      # authorization server.
      attr_accessor :client_secret

      # @return [String] Can be optionally specified when resource owner
      # password grant type is supported by this authorization server. Default
      # resource owner username.
      attr_accessor :resource_owner_username

      # @return [String] Can be optionally specified when resource owner
      # password grant type is supported by this authorization server. Default
      # resource owner password.
      attr_accessor :resource_owner_password

      # @return [String] User-friendly authorization server name.
      attr_accessor :display_name

      # @return [String] Optional reference to a page where client or app
      # registration for this authorization server is performed. Contains
      # absolute URL to entity being referenced.
      attr_accessor :client_registration_endpoint

      # @return [String] OAuth authorization endpoint. See
      # http://tools.ietf.org/html/rfc6749#section-3.2.
      attr_accessor :authorization_endpoint

      # @return [Array<GrantType>] Form of an authorization grant, which the
      # client uses to request the access token.
      attr_accessor :grant_types

      # @return [String] Client or app id registered with this authorization
      # server.
      attr_accessor :client_id


      #
      # Mapper for AuthorizationServerContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AuthorizationServerContract',
          type: {
            name: 'Composite',
            class_name: 'AuthorizationServerContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              authorization_methods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizationMethods',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AuthorizationMethodElementType',
                      type: {
                        name: 'Enum',
                        module: 'AuthorizationMethod'
                      }
                  }
                }
              },
              client_authentication_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientAuthenticationMethod',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientAuthenticationMethodElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              token_body_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tokenBodyParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TokenBodyParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TokenBodyParameterContract'
                      }
                  }
                }
              },
              token_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tokenEndpoint',
                type: {
                  name: 'String'
                }
              },
              support_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportState',
                type: {
                  name: 'Boolean'
                }
              },
              default_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultScope',
                type: {
                  name: 'String'
                }
              },
              bearer_token_sending_methods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bearerTokenSendingMethods',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BearerTokenSendingMethodElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientSecret',
                type: {
                  name: 'String'
                }
              },
              resource_owner_username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceOwnerUsername',
                type: {
                  name: 'String'
                }
              },
              resource_owner_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceOwnerPassword',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 50,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              client_registration_endpoint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.clientRegistrationEndpoint',
                type: {
                  name: 'String'
                }
              },
              authorization_endpoint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.authorizationEndpoint',
                type: {
                  name: 'String'
                }
              },
              grant_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.grantTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GrantTypeElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.clientId',
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
