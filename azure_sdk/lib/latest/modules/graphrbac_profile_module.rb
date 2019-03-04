# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::Profiles::Latest
  module GraphRbac
    ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
    Objects = Azure::GraphRbac::V1_6::Objects
    OAuth2 = Azure::GraphRbac::V1_6::OAuth2
    Users = Azure::GraphRbac::V1_6::Users
    Domains = Azure::GraphRbac::V1_6::Domains
    SignedInUser = Azure::GraphRbac::V1_6::SignedInUser
    Applications = Azure::GraphRbac::V1_6::Applications
    DeletedApplications = Azure::GraphRbac::V1_6::DeletedApplications
    Groups = Azure::GraphRbac::V1_6::Groups

    module Models
      DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
      PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
      GraphError = Azure::GraphRbac::V1_6::Models::GraphError
      UserBase = Azure::GraphRbac::V1_6::Models::UserBase
      AddOwnerParameters = Azure::GraphRbac::V1_6::Models::AddOwnerParameters
      DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
      UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
      PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
      SignInName = Azure::GraphRbac::V1_6::Models::SignInName
      ApplicationBase = Azure::GraphRbac::V1_6::Models::ApplicationBase
      ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
      ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
      ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
      UserType = Azure::GraphRbac::V1_6::Models::UserType
      UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
      Domain = Azure::GraphRbac::V1_6::Models::Domain
      GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
      Application = Azure::GraphRbac::V1_6::Models::Application
      ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
      ApplicationUpdateParameters = Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
      User = Azure::GraphRbac::V1_6::Models::User
      Permissions = Azure::GraphRbac::V1_6::Models::Permissions
      UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
      GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
      InformationalUrl = Azure::GraphRbac::V1_6::Models::InformationalUrl
      OptionalClaim = Azure::GraphRbac::V1_6::Models::OptionalClaim
      PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
      PreAuthorizedApplicationPermission = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
      OAuth2Permission = Azure::GraphRbac::V1_6::Models::OAuth2Permission
      PreAuthorizedApplication = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
      OptionalClaims = Azure::GraphRbac::V1_6::Models::OptionalClaims
      DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
      PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
      GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
      RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
      GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
      ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
      AppRole = Azure::GraphRbac::V1_6::Models::AppRole
      UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
      GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
      ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
      GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
      KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
      CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
      KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
      CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
      PreAuthorizedApplicationExtension = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
      PermissionsListResult = Azure::GraphRbac::V1_6::Models::PermissionsListResult
      KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
      UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
      ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    end

    class GraphRbacDataClass
      attr_reader :service_principals, :objects, :oauth2, :users, :domains, :signed_in_user, :applications, :deleted_applications, :groups, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @service_principals = @client_0.service_principals
        @objects = @client_0.objects
        @oauth2 = @client_0.oauth2
        @users = @client_0.users
        @domains = @client_0.domains
        @signed_in_user = @client_0.signed_in_user
        @applications = @client_0.applications
        @deleted_applications = @client_0.deleted_applications
        @groups = @client_0.groups

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/GraphRbac"
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

      class ModelClasses
        def directory_object_list_result
          Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
        end
        def password_profile
          Azure::GraphRbac::V1_6::Models::PasswordProfile
        end
        def graph_error
          Azure::GraphRbac::V1_6::Models::GraphError
        end
        def user_base
          Azure::GraphRbac::V1_6::Models::UserBase
        end
        def add_owner_parameters
          Azure::GraphRbac::V1_6::Models::AddOwnerParameters
        end
        def domain_list_result
          Azure::GraphRbac::V1_6::Models::DomainListResult
        end
        def user_list_result
          Azure::GraphRbac::V1_6::Models::UserListResult
        end
        def password_credential_list_result
          Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
        end
        def sign_in_name
          Azure::GraphRbac::V1_6::Models::SignInName
        end
        def application_base
          Azure::GraphRbac::V1_6::Models::ApplicationBase
        end
        def adgroup
          Azure::GraphRbac::V1_6::Models::ADGroup
        end
        def service_principal
          Azure::GraphRbac::V1_6::Models::ServicePrincipal
        end
        def service_principal_create_parameters
          Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
        end
        def user_type
          Azure::GraphRbac::V1_6::Models::UserType
        end
        def user_update_parameters
          Azure::GraphRbac::V1_6::Models::UserUpdateParameters
        end
        def domain
          Azure::GraphRbac::V1_6::Models::Domain
        end
        def group_create_parameters
          Azure::GraphRbac::V1_6::Models::GroupCreateParameters
        end
        def application
          Azure::GraphRbac::V1_6::Models::Application
        end
        def application_create_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
        end
        def application_update_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
        end
        def user
          Azure::GraphRbac::V1_6::Models::User
        end
        def permissions
          Azure::GraphRbac::V1_6::Models::Permissions
        end
        def user_create_parameters
          Azure::GraphRbac::V1_6::Models::UserCreateParameters
        end
        def group_add_member_parameters
          Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
        end
        def informational_url
          Azure::GraphRbac::V1_6::Models::InformationalUrl
        end
        def optional_claim
          Azure::GraphRbac::V1_6::Models::OptionalClaim
        end
        def password_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
        end
        def pre_authorized_application_permission
          Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
        end
        def oauth2_permission
          Azure::GraphRbac::V1_6::Models::OAuth2Permission
        end
        def pre_authorized_application
          Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
        end
        def optional_claims
          Azure::GraphRbac::V1_6::Models::OptionalClaims
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
        def resource_access
          Azure::GraphRbac::V1_6::Models::ResourceAccess
        end
        def app_role
          Azure::GraphRbac::V1_6::Models::AppRole
        end
        def user_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
        end
        def get_objects_parameters
          Azure::GraphRbac::V1_6::Models::GetObjectsParameters
        end
        def application_list_result
          Azure::GraphRbac::V1_6::Models::ApplicationListResult
        end
        def group_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
        end
        def key_credential_list_result
          Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
        end
        def check_group_membership_parameters
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
        end
        def key_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
        end
        def check_group_membership_result
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
        end
        def pre_authorized_application_extension
          Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
        end
        def permissions_list_result
          Azure::GraphRbac::V1_6::Models::PermissionsListResult
        end
        def key_credential
          Azure::GraphRbac::V1_6::Models::KeyCredential
        end
        def user_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
        end
        def service_principal_list_result
          Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
        end
      end
    end
  end
end
