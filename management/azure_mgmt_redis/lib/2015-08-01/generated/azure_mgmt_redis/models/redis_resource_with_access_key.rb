# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2015_08_01
  module Models
    #
    # A Redis item in CreateOrUpdate Operation response.
    #
    class RedisResourceWithAccessKey < Resource

      include MsRestAzure

      # @return [String] RedisVersion parameter has been deprecated. As such,
      # it is no longer necessary to provide this parameter and any value
      # specified is ignored.
      attr_accessor :redis_version

      # @return [Sku] What SKU of Redis cache to deploy.
      attr_accessor :sku

      # @return [Hash{String => String}] All Redis Settings. Few possible keys:
      # rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value
      # etc.
      attr_accessor :redis_configuration

      # @return [Boolean] If the value is true, then the non-SLL Redis server
      # port (6379) will be enabled.
      attr_accessor :enable_non_ssl_port

      # @return [Hash{String => String}] tenantSettings
      attr_accessor :tenant_settings

      # @return [Integer] The number of shards to be created on a Premium
      # Cluster Cache.
      attr_accessor :shard_count

      # @return [String] The exact ARM resource ID of the virtual network to
      # deploy the Redis cache in. Example format:
      # /subscriptions/{subid}/resourceGroups/{resourceGroupName}/Microsoft.ClassicNetwork/VirtualNetworks/vnet1
      attr_accessor :virtual_network

      # @return [String] Required when deploying a Redis cache inside an
      # existing Azure Virtual Network.
      attr_accessor :subnet

      # @return [String] Required when deploying a Redis cache inside an
      # existing Azure Virtual Network.
      attr_accessor :static_ip

      # @return [String] Redis instance provisioning status.
      attr_accessor :provisioning_state

      # @return [String] Redis host name.
      attr_accessor :host_name

      # @return [Integer] Redis non-SSL port.
      attr_accessor :port

      # @return [Integer] Redis SSL port.
      attr_accessor :ssl_port

      # @return [RedisAccessKeys] Redis cache access keys.
      attr_accessor :access_keys


      #
      # Mapper for RedisResourceWithAccessKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisResourceWithAccessKey',
          type: {
            name: 'Composite',
            class_name: 'RedisResourceWithAccessKey',
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
                required: true,
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
              redis_version: {
                required: false,
                serialized_name: 'properties.redisVersion',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: true,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              redis_configuration: {
                required: false,
                serialized_name: 'properties.redisConfiguration',
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
              enable_non_ssl_port: {
                required: false,
                serialized_name: 'properties.enableNonSslPort',
                type: {
                  name: 'Boolean'
                }
              },
              tenant_settings: {
                required: false,
                serialized_name: 'properties.tenantSettings',
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
              shard_count: {
                required: false,
                serialized_name: 'properties.shardCount',
                type: {
                  name: 'Number'
                }
              },
              virtual_network: {
                required: false,
                serialized_name: 'properties.virtualNetwork',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'String'
                }
              },
              static_ip: {
                required: false,
                serialized_name: 'properties.staticIP',
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
              host_name: {
                required: false,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              port: {
                required: false,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
                }
              },
              ssl_port: {
                required: false,
                serialized_name: 'properties.sslPort',
                type: {
                  name: 'Number'
                }
              },
              access_keys: {
                required: false,
                serialized_name: 'properties.accessKeys',
                type: {
                  name: 'Composite',
                  class_name: 'RedisAccessKeys'
                }
              }
            }
          }
        }
      end
    end
  end
end
