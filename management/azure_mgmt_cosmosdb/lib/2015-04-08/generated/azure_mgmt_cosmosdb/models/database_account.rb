# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # An Azure Cosmos DB database account.
    #
    class DatabaseAccount < Resource

      include MsRestAzure

      # @return [DatabaseAccountKind] Indicates the type of database account.
      # This can only be set at database account creation. Possible values
      # include: 'GlobalDocumentDB', 'MongoDB', 'Parse'. Default value:
      # 'GlobalDocumentDB' .
      attr_accessor :kind

      # @return [String]
      attr_accessor :provisioning_state

      # @return [String] The connection endpoint for the Cosmos DB database
      # account.
      attr_accessor :document_endpoint

      # @return [DatabaseAccountOfferType] The offer type for the Cosmos DB
      # database account. Default value: Standard. Possible values include:
      # 'Standard'
      attr_accessor :database_account_offer_type

      # @return [String] Cosmos DB Firewall Support: This value specifies the
      # set of IP addresses or IP address ranges in CIDR form to be included as
      # the allowed list of client IPs for a given database account. IP
      # addresses/ranges must be comma separated and must not contain any
      # spaces.
      attr_accessor :ip_range_filter

      # @return [Boolean] Flag to indicate whether to enable/disable Virtual
      # Network ACL rules.
      attr_accessor :is_virtual_network_filter_enabled

      # @return [Boolean] Enables automatic failover of the write region in the
      # rare event that the region is unavailable due to an outage. Automatic
      # failover will result in a new write region for the account and is
      # chosen based on the failover priorities configured for the account.
      attr_accessor :enable_automatic_failover

      # @return [ConsistencyPolicy] The consistency policy for the Cosmos DB
      # database account.
      attr_accessor :consistency_policy

      # @return [Array<Capability>] List of Cosmos DB capabilities for the
      # account
      attr_accessor :capabilities

      # @return [Array<Location>] An array that contains the write location for
      # the Cosmos DB account.
      attr_accessor :write_locations

      # @return [Array<Location>] An array that contains of the read locations
      # enabled for the Cosmos DB account.
      attr_accessor :read_locations

      # @return [Array<FailoverPolicy>] An array that contains the regions
      # ordered by their failover priorities.
      attr_accessor :failover_policies

      # @return [Array<VirtualNetworkRule>] List of Virtual Network ACL rules
      # configured for the Cosmos DB account.
      attr_accessor :virtual_network_rules

      # @return [Boolean] Enables the account to write in multiple locations
      attr_accessor :enable_multiple_write_locations


      #
      # Mapper for DatabaseAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAccount',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAccount',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                default_value: 'GlobalDocumentDB',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              document_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.documentEndpoint',
                type: {
                  name: 'String'
                }
              },
              database_account_offer_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseAccountOfferType',
                type: {
                  name: 'Enum',
                  module: 'DatabaseAccountOfferType'
                }
              },
              ip_range_filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipRangeFilter',
                type: {
                  name: 'String'
                }
              },
              is_virtual_network_filter_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isVirtualNetworkFilterEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              enable_automatic_failover: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAutomaticFailover',
                type: {
                  name: 'Boolean'
                }
              },
              consistency_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.consistencyPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ConsistencyPolicy'
                }
              },
              capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.capabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Capability'
                      }
                  }
                }
              },
              write_locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.writeLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              },
              read_locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.readLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              },
              failover_policies: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.failoverPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FailoverPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverPolicy'
                      }
                  }
                }
              },
              virtual_network_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkRule'
                      }
                  }
                }
              },
              enable_multiple_write_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableMultipleWriteLocations',
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
