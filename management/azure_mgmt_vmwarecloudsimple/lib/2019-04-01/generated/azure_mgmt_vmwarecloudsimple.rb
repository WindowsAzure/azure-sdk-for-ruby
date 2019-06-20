# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/module_definition'
require 'ms_rest_azure'

module Azure::VMwareCloudSimple::Mgmt::V2019-04-01
  autoload :AvailableOperations,                                '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/available_operations.rb'
  autoload :DedicatedCloudNodeOperations,                       '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/dedicated_cloud_node_operations.rb'
  autoload :DedicatedCloudServiceOperations,                    '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/dedicated_cloud_service_operations.rb'
  autoload :SkusAvailabilityWithinRegion,                       '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/skus_availability_within_region.rb'
  autoload :PrivateCloudByRegion,                               '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/private_cloud_by_region.rb'
  autoload :ResourcepoolsByPC,                                  '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/resourcepools_by_pc.rb'
  autoload :ResourcepoolByPC,                                   '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/resourcepool_by_pc.rb'
  autoload :VirtualMachineTemplatesByPC,                        '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/virtual_machine_templates_by_pc.rb'
  autoload :VirtualMachineTemplateByPC,                         '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/virtual_machine_template_by_pc.rb'
  autoload :VirtualNetworksByPC,                                '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/virtual_networks_by_pc.rb'
  autoload :VirtualNetworkByPC,                                 '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/virtual_network_by_pc.rb'
  autoload :UsagesWithinRegion,                                 '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/usages_within_region.rb'
  autoload :VirtualMachineOperations,                           '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/virtual_machine_operations.rb'
  autoload :VMwareCloudSimpleClient,                            '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/vmware_cloud_simple_client.rb'

  module Models
    autoload :VirtualDisk,                                        '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_disk.rb'
    autoload :AvailableOperationDisplay,                          '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/available_operation_display.rb'
    autoload :VirtualNetwork,                                     '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_network.rb'
    autoload :AvailableOperationDisplayPropertyServiceSpecificationMetricsList, '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/available_operation_display_property_service_specification_metrics_list.rb'
    autoload :VirtualNic,                                         '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_nic.rb'
    autoload :AvailableOperationsListResponse,                    '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/available_operations_list_response.rb'
    autoload :VirtualMachineTemplate,                             '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_machine_template.rb'
    autoload :CSRPError,                                          '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/csrperror.rb'
    autoload :PrivateCloud,                                       '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/private_cloud.rb'
    autoload :DedicatedCloudNode,                                 '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/dedicated_cloud_node.rb'
    autoload :PrivateCloudList,                                   '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/private_cloud_list.rb'
    autoload :DedicatedCloudService,                              '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/dedicated_cloud_service.rb'
    autoload :ResourcePoolsListResponse,                          '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/resource_pools_list_response.rb'
    autoload :OperationError,                                     '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/operation_error.rb'
    autoload :SkuAvailability,                                    '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/sku_availability.rb'
    autoload :PatchPayload,                                       '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/patch_payload.rb'
    autoload :SkuAvailabilityListResponse,                        '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/sku_availability_list_response.rb'
    autoload :VirtualDiskController,                              '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_disk_controller.rb'
    autoload :UsageName,                                          '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/usage_name.rb'
    autoload :AvailableOperation,                                 '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/available_operation.rb'
    autoload :Usage,                                              '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/usage.rb'
    autoload :Sku,                                                '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/sku.rb'
    autoload :UsageListResponse,                                  '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/usage_list_response.rb'
    autoload :DedicatedCloudServiceListResponse,                  '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/dedicated_cloud_service_list_response.rb'
    autoload :VirtualMachine,                                     '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_machine.rb'
    autoload :ResourcePool,                                       '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/resource_pool.rb'
    autoload :VirtualMachineListResponse,                         '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_machine_list_response.rb'
    autoload :CSRPErrorBody,                                      '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/csrperror_body.rb'
    autoload :VirtualMachineStopMode,                             '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_machine_stop_mode.rb'
    autoload :OperationResource,                                  '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/operation_resource.rb'
    autoload :VirtualMachineTemplateListResponse,                 '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_machine_template_list_response.rb'
    autoload :DedicatedCloudNodeListResponse,                     '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/dedicated_cloud_node_list_response.rb'
    autoload :VirtualNetworkListResponse,                         '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_network_list_response.rb'
    autoload :AvailableOperationDisplayPropertyServiceSpecificationMetricsItem, '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/available_operation_display_property_service_specification_metrics_item.rb'
    autoload :OperationOrigin,                                    '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/operation_origin.rb'
    autoload :AggregationType,                                    '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/aggregation_type.rb'
    autoload :NodeStatus,                                         '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/node_status.rb'
    autoload :OnboardingStatus,                                   '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/onboarding_status.rb'
    autoload :DiskIndependenceMode,                               '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/disk_independence_mode.rb'
    autoload :NICType,                                            '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/nictype.rb'
    autoload :PrivateCloudResourceType,                           '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/private_cloud_resource_type.rb'
    autoload :UsageCount,                                         '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/usage_count.rb'
    autoload :GuestOSType,                                        '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/guest_ostype.rb'
    autoload :VirtualMachineStatus,                               '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/virtual_machine_status.rb'
    autoload :StopMode,                                           '2019-04-01/generated/azure_mgmt_vmwarecloudsimple/models/stop_mode.rb'
  end
end
