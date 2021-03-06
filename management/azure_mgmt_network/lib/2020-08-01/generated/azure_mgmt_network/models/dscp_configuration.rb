# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # DSCP Configuration in a resource group.
    #
    class DscpConfiguration < Resource

      include MsRestAzure

      # @return [Array<Integer>] List of markings to be used in the
      # configuration.
      attr_accessor :markings

      # @return [Array<QosIpRange>] Source IP ranges.
      attr_accessor :source_ip_ranges

      # @return [Array<QosIpRange>] Destination IP ranges.
      attr_accessor :destination_ip_ranges

      # @return [Array<QosPortRange>] Sources port ranges.
      attr_accessor :source_port_ranges

      # @return [Array<QosPortRange>] Destination port ranges.
      attr_accessor :destination_port_ranges

      # @return [ProtocolType] RNM supported protocol types. Possible values
      # include: 'DoNotUse', 'Icmp', 'Tcp', 'Udp', 'Gre', 'Esp', 'Ah', 'Vxlan',
      # 'All'
      attr_accessor :protocol

      # @return [String] Qos Collection ID generated by RNM.
      attr_accessor :qos_collection_id

      # @return [Array<NetworkInterface>] Associated Network Interfaces to the
      # DSCP Configuration.
      attr_accessor :associated_network_interfaces

      # @return [String] The resource GUID property of the DSCP Configuration
      # resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the DSCP
      # Configuration resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for DscpConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscpConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DscpConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
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
              markings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.markings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              source_ip_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceIpRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QosIpRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QosIpRange'
                      }
                  }
                }
              },
              destination_ip_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationIpRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QosIpRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QosIpRange'
                      }
                  }
                }
              },
              source_port_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourcePortRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QosPortRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QosPortRange'
                      }
                  }
                }
              },
              destination_port_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationPortRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QosPortRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QosPortRange'
                      }
                  }
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              qos_collection_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.qosCollectionId',
                type: {
                  name: 'String'
                }
              },
              associated_network_interfaces: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.associatedNetworkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterface'
                      }
                  }
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
