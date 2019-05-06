# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory service principal information.
    #
    class ServicePrincipal < DirectoryObject

      include MsRestAzure


      def initialize
        @objectType = "ServicePrincipal"
      end

      attr_accessor :objectType

      # @return [Boolean] whether or not the service principal account is
      # enabled
      attr_accessor :account_enabled

      # @return [Array<String>] alternative names
      attr_accessor :alternative_names

      # @return [String] The display name exposed by the associated
      # application.
      attr_accessor :app_display_name

      # @return [String] The application ID.
      attr_accessor :app_id

      # @return [String]
      attr_accessor :app_owner_tenant_id

      # @return [Boolean] Specifies whether an AppRoleAssignment to a user or
      # group is required before Azure AD will issue a user or access token to
      # the application.
      attr_accessor :app_role_assignment_required

      # @return [Array<AppRole>] The collection of application roles that an
      # application may declare. These roles can be assigned to users, groups
      # or service principals.
      attr_accessor :app_roles

      # @return [String] The display name of the service principal.
      attr_accessor :display_name

      # @return [String] A URL provided by the author of the associated
      # application to report errors when using the application.
      attr_accessor :error_url

      # @return [String] The URL to the homepage of the associated application.
      attr_accessor :homepage

      # @return [Array<KeyCredential>] The collection of key credentials
      # associated with the service principal.
      attr_accessor :key_credentials

      # @return [String] A URL provided by the author of the associated
      # application to logout
      attr_accessor :logout_url

      # @return [Array<OAuth2Permission>] The OAuth 2.0 permissions exposed by
      # the associated application.
      attr_accessor :oauth2permissions

      # @return [Array<PasswordCredential>] The collection of password
      # credentials associated with the service principal.
      attr_accessor :password_credentials

      # @return [String] The thumbprint of preferred certificate to sign the
      # token
      attr_accessor :preferred_token_signing_key_thumbprint

      # @return [String] The publisher's name of the associated application
      attr_accessor :publisher_name

      # @return [Array<String>] The URLs that user tokens are sent to for sign
      # in with the associated application.  The redirect URIs that the oAuth
      # 2.0 authorization code and access tokens are sent to for the associated
      # application.
      attr_accessor :reply_urls

      # @return [String] The URL to the SAML metadata of the associated
      # application
      attr_accessor :saml_metadata_url

      # @return [Array<String>] A collection of service principal names.
      attr_accessor :service_principal_names

      # @return [String] the type of the service principal
      attr_accessor :service_principal_type

      # @return [Array<String>] Optional list of tags that you can apply to
      # your service principals. Not nullable.
      attr_accessor :tags


      #
      # Mapper for ServicePrincipal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServicePrincipal',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipal',
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
              object_id: {
                required: false,
                read_only: true,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              deletion_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'deletionTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              account_enabled: {
                required: false,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              alternative_names: {
                required: false,
                serialized_name: 'alternativeNames',
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
              app_display_name: {
                required: false,
                read_only: true,
                serialized_name: 'appDisplayName',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                required: false,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              app_owner_tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'appOwnerTenantId',
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
              app_roles: {
                required: false,
                serialized_name: 'appRoles',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AppRoleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AppRole'
                      }
                  }
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
              logout_url: {
                required: false,
                serialized_name: 'logoutUrl',
                type: {
                  name: 'String'
                }
              },
              oauth2permissions: {
                required: false,
                read_only: true,
                serialized_name: 'oauth2Permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OAuth2PermissionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OAuth2Permission'
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
              preferred_token_signing_key_thumbprint: {
                required: false,
                serialized_name: 'preferredTokenSigningKeyThumbprint',
                type: {
                  name: 'String'
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
              service_principal_type: {
                required: false,
                serialized_name: 'servicePrincipalType',
                type: {
                  name: 'String'
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
