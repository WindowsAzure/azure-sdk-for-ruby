# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # Describes a node type in the cluster, each node type represents sub set
    # of nodes in the cluster.
    #
    class NodeTypeDescription

      include MsRestAzure

      # @return [String] The name of the node type.
      attr_accessor :name

      # @return [Hash{String => String}] The placement tags applied to nodes in
      # the node type, which can be used to indicate where certain services
      # (workload) should run.
      attr_accessor :placement_properties

      # @return [Hash{String => String}] The capacity tags applied to the nodes
      # in the node type, the cluster resource manager uses these tags to
      # understand how much resource a node has.
      attr_accessor :capacities

      # @return [Integer] The TCP cluster management endpoint port.
      attr_accessor :client_connection_endpoint_port

      # @return [Integer] The HTTP cluster management endpoint port.
      attr_accessor :http_gateway_endpoint_port

      # @return [Enum] The durability level of the node type. Learn about
      # [DurabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).
      #
      # - Bronze - No privileges. This is the default.
      # - Silver - The infrastructure jobs can be paused for a duration of 10
      # minutes per UD.
      # - Gold - The infrastructure jobs can be paused for a duration of 2
      # hours per UD. Gold durability can be enabled only on full node VM skus
      # like D15_V2, G5 etc.
      # . Possible values include: 'Bronze', 'Silver', 'Gold'
      attr_accessor :durability_level

      # @return [EndpointRangeDescription] The range of ports from which
      # cluster assigned port to Service Fabric applications.
      attr_accessor :application_ports

      # @return [EndpointRangeDescription] The range of empheral ports that
      # nodes in this node type should be configured with.
      attr_accessor :ephemeral_ports

      # @return [Boolean] The node type on which system services will run. Only
      # one node type should be marked as primary. Primary node type cannot be
      # deleted or changed for existing clusters.
      attr_accessor :is_primary

      # @return [Integer] The number of nodes in the node type. This count
      # should match the capacity property in the corresponding
      # VirtualMachineScaleSet resource.
      attr_accessor :vm_instance_count

      # @return [Integer] The endpoint used by reverse proxy.
      attr_accessor :reverse_proxy_endpoint_port


      #
      # Mapper for NodeTypeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeTypeDescription',
          type: {
            name: 'Composite',
            class_name: 'NodeTypeDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              placement_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'placementProperties',
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
              capacities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacities',
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
              client_connection_endpoint_port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientConnectionEndpointPort',
                type: {
                  name: 'Number'
                }
              },
              http_gateway_endpoint_port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'httpGatewayEndpointPort',
                type: {
                  name: 'Number'
                }
              },
              durability_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'durabilityLevel',
                type: {
                  name: 'String'
                }
              },
              application_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'applicationPorts',
                type: {
                  name: 'Composite',
                  class_name: 'EndpointRangeDescription'
                }
              },
              ephemeral_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ephemeralPorts',
                type: {
                  name: 'Composite',
                  class_name: 'EndpointRangeDescription'
                }
              },
              is_primary: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isPrimary',
                type: {
                  name: 'Boolean'
                }
              },
              vm_instance_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vmInstanceCount',
                constraints: {
                  InclusiveMaximum: 2147483647,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              reverse_proxy_endpoint_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reverseProxyEndpointPort',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
