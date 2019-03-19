# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Request parameters for creating a new application.
    #
    class ApplicationCreateParameters < ApplicationBase

      include MsRestAzure

      # @return [String] The display name of the application.
      attr_accessor :display_name

      # @return [Array<String>] A collection of URIs for the application.
      attr_accessor :identifier_uris


      #
      # Mapper for ApplicationCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'ApplicationCreateParameters',
            model_properties: {
              allow_guests_sign_in: {
                required: false,
                serialized_name: 'allowGuestsSignIn',
                type: {
                  name: 'Boolean'
                }
              },
              allow_passthrough_users: {
                required: false,
                serialized_name: 'allowPassthroughUsers',
                type: {
                  name: 'Boolean'
                }
              },
              app_logo_url: {
                required: false,
                serialized_name: 'appLogoUrl',
                type: {
                  name: 'String'
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
              app_permissions: {
                required: false,
                serialized_name: 'appPermissions',
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
              available_to_other_tenants: {
                required: false,
                serialized_name: 'availableToOtherTenants',
                type: {
                  name: 'Boolean'
                }
              },
              error_url: {
                required: false,
                serialized_name: 'errorUrl',
                type: {
                  name: 'String'
                }
              },
              group_membership_claims: {
                required: false,
                serialized_name: 'groupMembershipClaims',
                type: {
                  name: 'Object'
                }
              },
              homepage: {
                required: false,
                serialized_name: 'homepage',
                type: {
                  name: 'String'
                }
              },
              informational_urls: {
                required: false,
                serialized_name: 'informationalUrls',
                type: {
                  name: 'Composite',
                  class_name: 'InformationalUrl'
                }
              },
              is_device_only_auth_supported: {
                required: false,
                serialized_name: 'isDeviceOnlyAuthSupported',
                type: {
                  name: 'Boolean'
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
              known_client_applications: {
                required: false,
                serialized_name: 'knownClientApplications',
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
              logout_url: {
                required: false,
                serialized_name: 'logoutUrl',
                type: {
                  name: 'String'
                }
              },
              oauth2allow_implicit_flow: {
                required: false,
                serialized_name: 'oauth2AllowImplicitFlow',
                type: {
                  name: 'Boolean'
                }
              },
              oauth2allow_url_path_matching: {
                required: false,
                serialized_name: 'oauth2AllowUrlPathMatching',
                type: {
                  name: 'Boolean'
                }
              },
              oauth2permissions: {
                required: false,
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
              oauth2require_post_response: {
                required: false,
                serialized_name: 'oauth2RequirePostResponse',
                type: {
                  name: 'Boolean'
                }
              },
              org_restrictions: {
                required: false,
                serialized_name: 'orgRestrictions',
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
              optional_claims: {
                required: false,
                serialized_name: 'optionalClaims',
                type: {
                  name: 'Composite',
                  class_name: 'OptionalClaims'
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
              pre_authorized_applications: {
                required: false,
                serialized_name: 'preAuthorizedApplications',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PreAuthorizedApplicationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PreAuthorizedApplication'
                      }
                  }
                }
              },
              public_client: {
                required: false,
                serialized_name: 'publicClient',
                type: {
                  name: 'Boolean'
                }
              },
              publisher_domain: {
                required: false,
                serialized_name: 'publisherDomain',
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
              required_resource_access: {
                required: false,
                serialized_name: 'requiredResourceAccess',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RequiredResourceAccessElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RequiredResourceAccess'
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
              sign_in_audience: {
                required: false,
                serialized_name: 'signInAudience',
                type: {
                  name: 'String'
                }
              },
              www_homepage: {
                required: false,
                serialized_name: 'wwwHomepage',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              identifier_uris: {
                required: false,
                serialized_name: 'identifierUris',
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
