# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::GraphRbac::Profiles::Latest
  SignedInUser = Azure::GraphRbac::V1_6::SignedInUser
  Applications = Azure::GraphRbac::V1_6::Applications
  ApplicationOperations = Azure::GraphRbac::V1_6::ApplicationOperations
  DeletedApplications = Azure::GraphRbac::V1_6::DeletedApplications
  Groups = Azure::GraphRbac::V1_6::Groups
  ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
  Users = Azure::GraphRbac::V1_6::Users
  Objects = Azure::GraphRbac::V1_6::Objects
  Domains = Azure::GraphRbac::V1_6::Domains
  OAuth2PermissionGrantOperations = Azure::GraphRbac::V1_6::OAuth2PermissionGrantOperations

  module Models
    Domain = Azure::GraphRbac::V1_6::Models::Domain
    ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
    GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
    GraphError = Azure::GraphRbac::V1_6::Models::GraphError
    SignInName = Azure::GraphRbac::V1_6::Models::SignInName
    ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
    ApplicationUpdateParameters = Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
    Application = Azure::GraphRbac::V1_6::Models::Application
    ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
    ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
    ServicePrincipalUpdateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalUpdateParameters
    ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
    UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
    UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
    User = Azure::GraphRbac::V1_6::Models::User
    UserType = Azure::GraphRbac::V1_6::Models::UserType
    ConsentType = Azure::GraphRbac::V1_6::Models::ConsentType
    GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
    GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
    OAuth2Permission = Azure::GraphRbac::V1_6::Models::OAuth2Permission
    PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
    PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
    PreAuthorizedApplicationPermission = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
    InformationalUrl = Azure::GraphRbac::V1_6::Models::InformationalUrl
    PreAuthorizedApplication = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
    OptionalClaim = Azure::GraphRbac::V1_6::Models::OptionalClaim
    DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
    PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
    GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
    RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
    GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
    ApplicationBase = Azure::GraphRbac::V1_6::Models::ApplicationBase
    GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
    UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
    UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
    UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
    ServicePrincipalObjectResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalObjectResult
    CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
    KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
    CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
    KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
    ServicePrincipalBase = Azure::GraphRbac::V1_6::Models::ServicePrincipalBase
    PreAuthorizedApplicationExtension = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
    OAuth2PermissionGrantListResult = Azure::GraphRbac::V1_6::Models::OAuth2PermissionGrantListResult
    KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
    OAuth2PermissionGrant = Azure::GraphRbac::V1_6::Models::OAuth2PermissionGrant
    AppRole = Azure::GraphRbac::V1_6::Models::AppRole
    DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
    AddOwnerParameters = Azure::GraphRbac::V1_6::Models::AddOwnerParameters
    ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    OptionalClaims = Azure::GraphRbac::V1_6::Models::OptionalClaims
    PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
    ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
    UserBase = Azure::GraphRbac::V1_6::Models::UserBase
    DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
  end

  #
  # GraphRbacDataClass
  #
  class GraphRbacDataClass
    attr_reader :signed_in_user, :applications, :application_operations, :deleted_applications, :groups, :service_principals, :users, :objects, :domains, :oauth2_permission_grant_operations, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @signed_in_user = @client_0.signed_in_user
      @applications = @client_0.applications
      @application_operations = @client_0.application_operations
      @deleted_applications = @client_0.deleted_applications
      @groups = @client_0.groups
      @service_principals = @client_0.service_principals
      @users = @client_0.users
      @objects = @client_0.objects
      @domains = @client_0.domains
      @oauth2_permission_grant_operations = @client_0.oauth2_permission_grant_operations

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/GraphRbac'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def domain
      Azure::GraphRbac::V1_6::Models::Domain
    end
    def application_list_result
      Azure::GraphRbac::V1_6::Models::ApplicationListResult
    end
    def get_objects_parameters
      Azure::GraphRbac::V1_6::Models::GetObjectsParameters
    end
    def graph_error
      Azure::GraphRbac::V1_6::Models::GraphError
    end
    def sign_in_name
      Azure::GraphRbac::V1_6::Models::SignInName
    end
    def application_create_parameters
      Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
    end
    def application_update_parameters
      Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
    end
    def application
      Azure::GraphRbac::V1_6::Models::Application
    end
    def adgroup
      Azure::GraphRbac::V1_6::Models::ADGroup
    end
    def service_principal_create_parameters
      Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
    end
    def service_principal_update_parameters
      Azure::GraphRbac::V1_6::Models::ServicePrincipalUpdateParameters
    end
    def service_principal
      Azure::GraphRbac::V1_6::Models::ServicePrincipal
    end
    def user_create_parameters
      Azure::GraphRbac::V1_6::Models::UserCreateParameters
    end
    def user_update_parameters
      Azure::GraphRbac::V1_6::Models::UserUpdateParameters
    end
    def user
      Azure::GraphRbac::V1_6::Models::User
    end
    def user_type
      Azure::GraphRbac::V1_6::Models::UserType
    end
    def consent_type
      Azure::GraphRbac::V1_6::Models::ConsentType
    end
    def group_add_member_parameters
      Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
    end
    def group_create_parameters
      Azure::GraphRbac::V1_6::Models::GroupCreateParameters
    end
    def oauth2_permission
      Azure::GraphRbac::V1_6::Models::OAuth2Permission
    end
    def password_credential_list_result
      Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
    end
    def password_credentials_update_parameters
      Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
    end
    def pre_authorized_application_permission
      Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
    end
    def informational_url
      Azure::GraphRbac::V1_6::Models::InformationalUrl
    end
    def pre_authorized_application
      Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
    end
    def optional_claim
      Azure::GraphRbac::V1_6::Models::OptionalClaim
    end
    def directory_object
      Azure::GraphRbac::V1_6::Models::DirectoryObject
    end
    def password_credential
      Azure::GraphRbac::V1_6::Models::PasswordCredential
    end
    def group_list_result
      Azure::GraphRbac::V1_6::Models::GroupListResult
    end
    def required_resource_access
      Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
    end
    def group_get_member_groups_parameters
      Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
    end
    def application_base
      Azure::GraphRbac::V1_6::Models::ApplicationBase
    end
    def group_get_member_groups_result
      Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
    end
    def user_list_result
      Azure::GraphRbac::V1_6::Models::UserListResult
    end
    def user_get_member_groups_result
      Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
    end
    def user_get_member_groups_parameters
      Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
    end
    def service_principal_object_result
      Azure::GraphRbac::V1_6::Models::ServicePrincipalObjectResult
    end
    def check_group_membership_parameters
      Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
    end
    def key_credential_list_result
      Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
    end
    def check_group_membership_result
      Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
    end
    def key_credentials_update_parameters
      Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
    end
    def service_principal_base
      Azure::GraphRbac::V1_6::Models::ServicePrincipalBase
    end
    def pre_authorized_application_extension
      Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
    end
    def oauth2_permission_grant_list_result
      Azure::GraphRbac::V1_6::Models::OAuth2PermissionGrantListResult
    end
    def key_credential
      Azure::GraphRbac::V1_6::Models::KeyCredential
    end
    def oauth2_permission_grant
      Azure::GraphRbac::V1_6::Models::OAuth2PermissionGrant
    end
    def app_role
      Azure::GraphRbac::V1_6::Models::AppRole
    end
    def domain_list_result
      Azure::GraphRbac::V1_6::Models::DomainListResult
    end
    def add_owner_parameters
      Azure::GraphRbac::V1_6::Models::AddOwnerParameters
    end
    def service_principal_list_result
      Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    end
    def optional_claims
      Azure::GraphRbac::V1_6::Models::OptionalClaims
    end
    def password_profile
      Azure::GraphRbac::V1_6::Models::PasswordProfile
    end
    def resource_access
      Azure::GraphRbac::V1_6::Models::ResourceAccess
    end
    def user_base
      Azure::GraphRbac::V1_6::Models::UserBase
    end
    def directory_object_list_result
      Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
    end
  end
end
