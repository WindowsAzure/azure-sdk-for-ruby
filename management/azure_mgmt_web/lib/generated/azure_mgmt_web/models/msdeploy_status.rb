# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # MSDeploy ARM response
    #
    class MSDeployStatus < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Username of deployer
      attr_accessor :deployer

      # @return [MSDeployProvisioningState] Provisioning state. Possible values
      # include: 'accepted', 'running', 'succeeded', 'failed', 'canceled'
      attr_accessor :provisioning_state

      # @return [DateTime] Start time of deploy operation
      attr_accessor :start_time

      # @return [DateTime] End time of deploy operation
      attr_accessor :end_time

      # @return [Boolean] Whether the deployment operation has completed
      attr_accessor :complete


      #
      # Mapper for MSDeployStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MSDeployStatus',
          type: {
            name: 'Composite',
            class_name: 'MSDeployStatus',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              deployer: {
                required: false,
                read_only: true,
                serialized_name: 'properties.deployer',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'MSDeployProvisioningState'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              complete: {
                required: false,
                read_only: true,
                serialized_name: 'properties.complete',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
