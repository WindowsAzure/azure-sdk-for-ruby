# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # An environment, which is essentially an ARM template deployment.
    #
    class DtlEnvironment < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [EnvironmentDeploymentProperties] The deployment properties of
      # the environment.
      attr_accessor :deployment_properties

      # @return [String] The display name of the Azure Resource Manager
      # template that produced the environment.
      attr_accessor :arm_template_display_name

      # @return [String] The identifier of the resource group containing the
      # environment's resources.
      attr_accessor :resource_group_id

      # @return [String] The creator of the environment.
      attr_accessor :created_by_user

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for DtlEnvironment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DtlEnvironment',
          type: {
            name: 'Composite',
            class_name: 'DtlEnvironment',
            model_properties: {
              id: {
                required: false,
                read_only: true,
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
              deployment_properties: {
                required: false,
                serialized_name: 'properties.deploymentProperties',
                type: {
                  name: 'Composite',
                  class_name: 'EnvironmentDeploymentProperties'
                }
              },
              arm_template_display_name: {
                required: false,
                serialized_name: 'properties.armTemplateDisplayName',
                type: {
                  name: 'String'
                }
              },
              resource_group_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroupId',
                type: {
                  name: 'String'
                }
              },
              created_by_user: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdByUser',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
