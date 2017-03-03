# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search
  module Models
    #
    # Describes an Azure Search service and its current state.
    #
    class SearchService < MsRestAzure::Resource

      include MsRestAzure

      # @return [Integer] The number of replicas in the Search service. If
      # specified, it must be a value between 1 and 12 inclusive for standard
      # SKUs or between 1 and 3 inclusive for basic SKU. Default value: 1 .
      attr_accessor :replica_count

      # @return [Integer] The number of partitions in the Search service; if
      # specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are
      # only valid for standard SKUs. For 'standard3' services with hostingMode
      # set to 'highDensity', the allowed values are between 1 and 3. Default
      # value: 1 .
      attr_accessor :partition_count

      # @return [HostingMode] Applicable only for the standard3 SKU. You can
      # set this property to enable up to 3 high density partitions that allow
      # up to 1000 indexes, which is much higher than the maximum indexes
      # allowed for any other SKU. For the standard3 SKU, the value is either
      # 'default' or 'highDensity'. For all other SKUs, this value must be
      # 'default'. Possible values include: 'default', 'highDensity'. Default
      # value: 'default' .
      attr_accessor :hosting_mode

      # @return [SearchServiceStatus] The status of the Search service.
      # Possible values include: 'running': The Search service is running and
      # no provisioning operations are underway. 'provisioning': The Search
      # service is being provisioned or scaled up or down. 'deleting': The
      # Search service is being deleted. 'degraded': The Search service is
      # degraded. This can occur when the underlying search units are not
      # healthy. The Search service is most likely operational, but performance
      # might be slow and some requests might be dropped. 'disabled': The
      # Search service is disabled. In this state, the service will reject all
      # API requests. 'error': The Search service is in an error state. If your
      # service is in the degraded, disabled, or error states, it means the
      # Azure Search team is actively investigating the underlying issue.
      # Dedicated services in these states are still chargeable based on the
      # number of search units provisioned. Possible values include: 'running',
      # 'provisioning', 'deleting', 'degraded', 'disabled', 'error'
      attr_accessor :status

      # @return [String] The details of the Search service status.
      attr_accessor :status_details

      # @return [ProvisioningState] The state of the last provisioning
      # operation performed on the Search service. Provisioning is an
      # intermediate state that occurs while service capacity is being
      # established. After capacity is set up, provisioningState changes to
      # either 'succeeded' or 'failed'. Client applications can poll
      # provisioning status (the recommended polling interval is from 30
      # seconds to one minute) by using the Get Search Service operation to see
      # when an operation is completed. If you are using the free service, this
      # value tends to come back as 'succeeded' directly in the call to Create
      # Search service. This is because the free service uses capacity that is
      # already set up. Possible values include: 'succeeded', 'provisioning',
      # 'failed'
      attr_accessor :provisioning_state

      # @return [Sku] The SKU of the Search Service, which determines price
      # tier and capacity limits.
      attr_accessor :sku


      #
      # Mapper for SearchService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SearchService',
          type: {
            name: 'Composite',
            class_name: 'SearchService',
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
              replica_count: {
                required: false,
                serialized_name: 'properties.replicaCount',
                default_value: 1,
                constraints: {
                  InclusiveMaximum: 12,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              partition_count: {
                required: false,
                serialized_name: 'properties.partitionCount',
                default_value: 1,
                constraints: {
                  InclusiveMaximum: 12,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              hosting_mode: {
                required: false,
                serialized_name: 'properties.hostingMode',
                default_value: 'default',
                type: {
                  name: 'Enum',
                  module: 'HostingMode'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'SearchServiceStatus'
                }
              },
              status_details: {
                required: false,
                read_only: true,
                serialized_name: 'properties.statusDetails',
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
                  module: 'ProvisioningState'
                }
              },
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              }
            }
          }
        }
      end
    end
  end
end
