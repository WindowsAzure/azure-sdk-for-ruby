# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Request parameters for update an existing service principal.
    #
    class ServicePrincipalUpdateParameters < ServicePrincipalBase

      include MsRestAzure


      #
      # Mapper for ServicePrincipalUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServicePrincipalUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipalUpdateParameters',
            model_properties: {
              account_enabled: {
                required: false,
                serialized_name: 'accountEnabled',
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
