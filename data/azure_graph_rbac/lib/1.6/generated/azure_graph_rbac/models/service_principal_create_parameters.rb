# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Request parameters for creating a new service principal.
    #
    class ServicePrincipalCreateParameters

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [Boolean] Whether the account is enabled
      attr_accessor :account_enabled

      # @return [String] application Id
      attr_accessor :app_id

      # @return [Boolean] Specifies whether an AppRoleAssignment to a user or
      # group is required before Azure AD will issue a user or access token to
      # the application.
      attr_accessor :app_role_assignment_required

      # @return [String] The display name for the service principal.
      attr_accessor :display_name

      # @return [String]
      attr_accessor :error_url

      # @return [String] The URL to the homepage of the associated application.
      attr_accessor :homepage

      # @return [Array<KeyCredential>] A collection of KeyCredential objects.
      attr_accessor :key_credentials

      # @return [Array<PasswordCredential>] A collection of PasswordCredential
      # objects
      attr_accessor :password_credentials

      # @return [String] The display name of the tenant in which the associated
      # application is specified.
      attr_accessor :publisher_name

      # @return [Array<String>] A collection of reply URLs for the service
      # principal.
      attr_accessor :reply_urls

      # @return [String]
      attr_accessor :saml_metadata_url

      # @return [Array<String>] A collection of service principal names.
      attr_accessor :service_principal_names

      # @return [Array<String>]
      attr_accessor :tags


      #
      # Mapper for ServicePrincipalCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServicePrincipalCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipalCreateParameters',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              account_enabled: {
                required: false,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              app_id: {
                required: true,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              app_role_assignment_required: {
                required: false,
                serialized_name: 'appRoleAssignmentRequired',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              error_url: {
                required: false,
                serialized_name: 'errorUrl',
                type: {
                  name: 'String'
                }
              },
              homepage: {
                required: false,
                serialized_name: 'homepage',
                type: {
                  name: 'String'
                }
              },
              key_credentials: {
                required: false,
                serialized_name: 'keyCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KeyCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyCredential'
                      }
                  }
                }
              },
              password_credentials: {
                required: false,
                serialized_name: 'passwordCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PasswordCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PasswordCredential'
                      }
                  }
                }
              },
              publisher_name: {
                required: false,
                serialized_name: 'publisherName',
                type: {
                  name: 'String'
                }
              },
              reply_urls: {
                required: false,
                serialized_name: 'replyUrls',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              saml_metadata_url: {
                required: false,
                serialized_name: 'samlMetadataUrl',
                type: {
                  name: 'String'
                }
              },
              service_principal_names: {
                required: false,
                serialized_name: 'servicePrincipalNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
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
