# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KubernetesConfiguration::Mgmt::V2021_03_01
  module Models
    #
    # The SourceControl Configuration object returned in Get & Put response.
    #
    class SourceControlConfiguration < ProxyResource

      include MsRestAzure

      # @return [String] Url of the SourceControl Repository.
      attr_accessor :repository_url

      # @return [String] The namespace to which this operator is installed to.
      # Maximum of 253 lower case alphanumeric characters, hyphen and period
      # only. Default value: 'default' .
      attr_accessor :operator_namespace

      # @return [String] Instance name of the operator - identifying the
      # specific configuration.
      attr_accessor :operator_instance_name

      # @return [OperatorType] Type of the operator. Possible values include:
      # 'Flux'
      attr_accessor :operator_type

      # @return [String] Any Parameters for the Operator instance in string
      # format.
      attr_accessor :operator_params

      # @return [Hash{String => String}] Name-value pairs of protected
      # configuration settings for the configuration
      attr_accessor :configuration_protected_settings

      # @return [OperatorScopeType] Scope at which the operator will be
      # installed. Possible values include: 'cluster', 'namespace'. Default
      # value: 'cluster' .
      attr_accessor :operator_scope

      # @return [String] Public Key associated with this SourceControl
      # configuration (either generated within the cluster or provided by the
      # user).
      attr_accessor :repository_public_key

      # @return [String] Base64-encoded known_hosts contents containing public
      # SSH keys required to access private Git instances
      attr_accessor :ssh_known_hosts_contents

      # @return [Boolean] Option to enable Helm Operator for this git
      # configuration.
      attr_accessor :enable_helm_operator

      # @return [HelmOperatorProperties] Properties for Helm operator.
      attr_accessor :helm_operator_properties

      # @return [ProvisioningStateType] The provisioning state of the resource
      # provider. Possible values include: 'Accepted', 'Deleting', 'Running',
      # 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      # @return [ComplianceStatus] Compliance Status of the Configuration
      attr_accessor :compliance_status

      # @return [SystemData] Top level metadata
      # https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
      attr_accessor :system_data


      #
      # Mapper for SourceControlConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SourceControlConfiguration',
          type: {
            name: 'Composite',
            class_name: 'SourceControlConfiguration',
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
              repository_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.repositoryUrl',
                type: {
                  name: 'String'
                }
              },
              operator_namespace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.operatorNamespace',
                default_value: 'default',
                type: {
                  name: 'String'
                }
              },
              operator_instance_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.operatorInstanceName',
                type: {
                  name: 'String'
                }
              },
              operator_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.operatorType',
                type: {
                  name: 'String'
                }
              },
              operator_params: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.operatorParams',
                type: {
                  name: 'String'
                }
              },
              configuration_protected_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.configurationProtectedSettings',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              operator_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.operatorScope',
                default_value: 'cluster',
                type: {
                  name: 'String'
                }
              },
              repository_public_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.repositoryPublicKey',
                type: {
                  name: 'String'
                }
              },
              ssh_known_hosts_contents: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sshKnownHostsContents',
                type: {
                  name: 'String'
                }
              },
              enable_helm_operator: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableHelmOperator',
                type: {
                  name: 'Boolean'
                }
              },
              helm_operator_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.helmOperatorProperties',
                type: {
                  name: 'Composite',
                  class_name: 'HelmOperatorProperties'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              compliance_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.complianceStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ComplianceStatus'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              }
            }
          }
        }
      end
    end
  end
end
