# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '1.6/generated/azure_graph_rbac/module_definition'
require 'ms_rest_azure'

module Azure::GraphRbac::V1_6
  autoload :SignedInUser,                                       '1.6/generated/azure_graph_rbac/signed_in_user.rb'
  autoload :Applications,                                       '1.6/generated/azure_graph_rbac/applications.rb'
  autoload :ApplicationOperations,                              '1.6/generated/azure_graph_rbac/application_operations.rb'
  autoload :DeletedApplications,                                '1.6/generated/azure_graph_rbac/deleted_applications.rb'
  autoload :Groups,                                             '1.6/generated/azure_graph_rbac/groups.rb'
  autoload :ServicePrincipals,                                  '1.6/generated/azure_graph_rbac/service_principals.rb'
  autoload :Users,                                              '1.6/generated/azure_graph_rbac/users.rb'
  autoload :Objects,                                            '1.6/generated/azure_graph_rbac/objects.rb'
  autoload :Domains,                                            '1.6/generated/azure_graph_rbac/domains.rb'
  autoload :OAuth2PermissionGrantOperations,                    '1.6/generated/azure_graph_rbac/oauth2permission_grant_operations.rb'
  autoload :GraphRbacClient,                                    '1.6/generated/azure_graph_rbac/graph_rbac_client.rb'

  module Models
    autoload :GroupAddMemberParameters,                           '1.6/generated/azure_graph_rbac/models/group_add_member_parameters.rb'
    autoload :GroupCreateParameters,                              '1.6/generated/azure_graph_rbac/models/group_create_parameters.rb'
    autoload :OAuth2Permission,                                   '1.6/generated/azure_graph_rbac/models/oauth2permission.rb'
    autoload :PasswordCredentialListResult,                       '1.6/generated/azure_graph_rbac/models/password_credential_list_result.rb'
    autoload :PasswordCredentialsUpdateParameters,                '1.6/generated/azure_graph_rbac/models/password_credentials_update_parameters.rb'
    autoload :PreAuthorizedApplicationPermission,                 '1.6/generated/azure_graph_rbac/models/pre_authorized_application_permission.rb'
    autoload :InformationalUrl,                                   '1.6/generated/azure_graph_rbac/models/informational_url.rb'
    autoload :PreAuthorizedApplication,                           '1.6/generated/azure_graph_rbac/models/pre_authorized_application.rb'
    autoload :OptionalClaim,                                      '1.6/generated/azure_graph_rbac/models/optional_claim.rb'
    autoload :DirectoryObject,                                    '1.6/generated/azure_graph_rbac/models/directory_object.rb'
    autoload :PasswordCredential,                                 '1.6/generated/azure_graph_rbac/models/password_credential.rb'
    autoload :GroupListResult,                                    '1.6/generated/azure_graph_rbac/models/group_list_result.rb'
    autoload :RequiredResourceAccess,                             '1.6/generated/azure_graph_rbac/models/required_resource_access.rb'
    autoload :GroupGetMemberGroupsParameters,                     '1.6/generated/azure_graph_rbac/models/group_get_member_groups_parameters.rb'
    autoload :ApplicationBase,                                    '1.6/generated/azure_graph_rbac/models/application_base.rb'
    autoload :GroupGetMemberGroupsResult,                         '1.6/generated/azure_graph_rbac/models/group_get_member_groups_result.rb'
    autoload :UserListResult,                                     '1.6/generated/azure_graph_rbac/models/user_list_result.rb'
    autoload :UserGetMemberGroupsResult,                          '1.6/generated/azure_graph_rbac/models/user_get_member_groups_result.rb'
    autoload :UserGetMemberGroupsParameters,                      '1.6/generated/azure_graph_rbac/models/user_get_member_groups_parameters.rb'
    autoload :ServicePrincipalObjectResult,                       '1.6/generated/azure_graph_rbac/models/service_principal_object_result.rb'
    autoload :CheckGroupMembershipParameters,                     '1.6/generated/azure_graph_rbac/models/check_group_membership_parameters.rb'
    autoload :KeyCredentialListResult,                            '1.6/generated/azure_graph_rbac/models/key_credential_list_result.rb'
    autoload :CheckGroupMembershipResult,                         '1.6/generated/azure_graph_rbac/models/check_group_membership_result.rb'
    autoload :KeyCredentialsUpdateParameters,                     '1.6/generated/azure_graph_rbac/models/key_credentials_update_parameters.rb'
    autoload :ServicePrincipalBase,                               '1.6/generated/azure_graph_rbac/models/service_principal_base.rb'
    autoload :PreAuthorizedApplicationExtension,                  '1.6/generated/azure_graph_rbac/models/pre_authorized_application_extension.rb'
    autoload :OAuth2PermissionGrantListResult,                    '1.6/generated/azure_graph_rbac/models/oauth2permission_grant_list_result.rb'
    autoload :KeyCredential,                                      '1.6/generated/azure_graph_rbac/models/key_credential.rb'
    autoload :OAuth2PermissionGrant,                              '1.6/generated/azure_graph_rbac/models/oauth2permission_grant.rb'
    autoload :AppRole,                                            '1.6/generated/azure_graph_rbac/models/app_role.rb'
    autoload :DomainListResult,                                   '1.6/generated/azure_graph_rbac/models/domain_list_result.rb'
    autoload :AddOwnerParameters,                                 '1.6/generated/azure_graph_rbac/models/add_owner_parameters.rb'
    autoload :ServicePrincipalListResult,                         '1.6/generated/azure_graph_rbac/models/service_principal_list_result.rb'
    autoload :OptionalClaims,                                     '1.6/generated/azure_graph_rbac/models/optional_claims.rb'
    autoload :PasswordProfile,                                    '1.6/generated/azure_graph_rbac/models/password_profile.rb'
    autoload :ResourceAccess,                                     '1.6/generated/azure_graph_rbac/models/resource_access.rb'
    autoload :UserBase,                                           '1.6/generated/azure_graph_rbac/models/user_base.rb'
    autoload :DirectoryObjectListResult,                          '1.6/generated/azure_graph_rbac/models/directory_object_list_result.rb'
    autoload :Domain,                                             '1.6/generated/azure_graph_rbac/models/domain.rb'
    autoload :ApplicationListResult,                              '1.6/generated/azure_graph_rbac/models/application_list_result.rb'
    autoload :GetObjectsParameters,                               '1.6/generated/azure_graph_rbac/models/get_objects_parameters.rb'
    autoload :GraphError,                                         '1.6/generated/azure_graph_rbac/models/graph_error.rb'
    autoload :SignInName,                                         '1.6/generated/azure_graph_rbac/models/sign_in_name.rb'
    autoload :ApplicationCreateParameters,                        '1.6/generated/azure_graph_rbac/models/application_create_parameters.rb'
    autoload :ApplicationUpdateParameters,                        '1.6/generated/azure_graph_rbac/models/application_update_parameters.rb'
    autoload :Application,                                        '1.6/generated/azure_graph_rbac/models/application.rb'
    autoload :ADGroup,                                            '1.6/generated/azure_graph_rbac/models/adgroup.rb'
    autoload :ServicePrincipalCreateParameters,                   '1.6/generated/azure_graph_rbac/models/service_principal_create_parameters.rb'
    autoload :ServicePrincipalUpdateParameters,                   '1.6/generated/azure_graph_rbac/models/service_principal_update_parameters.rb'
    autoload :ServicePrincipal,                                   '1.6/generated/azure_graph_rbac/models/service_principal.rb'
    autoload :UserCreateParameters,                               '1.6/generated/azure_graph_rbac/models/user_create_parameters.rb'
    autoload :UserUpdateParameters,                               '1.6/generated/azure_graph_rbac/models/user_update_parameters.rb'
    autoload :User,                                               '1.6/generated/azure_graph_rbac/models/user.rb'
    autoload :UserType,                                           '1.6/generated/azure_graph_rbac/models/user_type.rb'
    autoload :ConsentType,                                        '1.6/generated/azure_graph_rbac/models/consent_type.rb'
  end
end
