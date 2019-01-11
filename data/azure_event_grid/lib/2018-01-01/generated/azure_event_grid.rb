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
require '2018-01-01/generated/azure_event_grid/module_definition'
require 'ms_rest_azure'

module Azure::EventGrid::V2018_01_01
  autoload :EventGridClient,                                    '2018-01-01/generated/azure_event_grid/event_grid_client.rb'

  module Models
    autoload :ContainerRegistryEventActor,                        '2018-01-01/generated/azure_event_grid/models/container_registry_event_actor.rb'
    autoload :ContainerRegistryEventSource,                       '2018-01-01/generated/azure_event_grid/models/container_registry_event_source.rb'
    autoload :StorageBlobDeletedEventData,                        '2018-01-01/generated/azure_event_grid/models/storage_blob_deleted_event_data.rb'
    autoload :ContainerRegistryEventData,                         '2018-01-01/generated/azure_event_grid/models/container_registry_event_data.rb'
    autoload :ResourceWriteSuccessData,                           '2018-01-01/generated/azure_event_grid/models/resource_write_success_data.rb'
    autoload :ServiceBusActiveMessagesAvailableWithNoListenersEventData, '2018-01-01/generated/azure_event_grid/models/service_bus_active_messages_available_with_no_listeners_event_data.rb'
    autoload :ResourceWriteCancelData,                            '2018-01-01/generated/azure_event_grid/models/resource_write_cancel_data.rb'
    autoload :ServiceBusDeadletterMessagesAvailableWithNoListenersEventData, '2018-01-01/generated/azure_event_grid/models/service_bus_deadletter_messages_available_with_no_listeners_event_data.rb'
    autoload :ResourceDeleteFailureData,                          '2018-01-01/generated/azure_event_grid/models/resource_delete_failure_data.rb'
    autoload :MediaJobStateChangeEventData,                       '2018-01-01/generated/azure_event_grid/models/media_job_state_change_event_data.rb'
    autoload :ResourceActionSuccessData,                          '2018-01-01/generated/azure_event_grid/models/resource_action_success_data.rb'
    autoload :MediaJobErrorDetail,                                '2018-01-01/generated/azure_event_grid/models/media_job_error_detail.rb'
    autoload :ResourceActionCancelData,                           '2018-01-01/generated/azure_event_grid/models/resource_action_cancel_data.rb'
    autoload :MediaJobError,                                      '2018-01-01/generated/azure_event_grid/models/media_job_error.rb'
    autoload :SubscriptionValidationEventData,                    '2018-01-01/generated/azure_event_grid/models/subscription_validation_event_data.rb'
    autoload :MediaJobOutput,                                     '2018-01-01/generated/azure_event_grid/models/media_job_output.rb'
    autoload :SubscriptionDeletedEventData,                       '2018-01-01/generated/azure_event_grid/models/subscription_deleted_event_data.rb'
    autoload :ResourceWriteFailureData,                           '2018-01-01/generated/azure_event_grid/models/resource_write_failure_data.rb'
    autoload :ResourceDeleteSuccessData,                          '2018-01-01/generated/azure_event_grid/models/resource_delete_success_data.rb'
    autoload :EventHubCaptureFileCreatedEventData,                '2018-01-01/generated/azure_event_grid/models/event_hub_capture_file_created_event_data.rb'
    autoload :MediaLiveEventEncoderConnectedEventData,            '2018-01-01/generated/azure_event_grid/models/media_live_event_encoder_connected_event_data.rb'
    autoload :MediaLiveEventIncomingStreamsOutOfSyncEventData,    '2018-01-01/generated/azure_event_grid/models/media_live_event_incoming_streams_out_of_sync_event_data.rb'
    autoload :DeviceTwinProperties,                               '2018-01-01/generated/azure_event_grid/models/device_twin_properties.rb'
    autoload :MediaLiveEventIncomingStreamReceivedEventData,      '2018-01-01/generated/azure_event_grid/models/media_live_event_incoming_stream_received_event_data.rb'
    autoload :DeviceTwinInfoX509Thumbprint,                       '2018-01-01/generated/azure_event_grid/models/device_twin_info_x509thumbprint.rb'
    autoload :ResourceDeleteCancelData,                           '2018-01-01/generated/azure_event_grid/models/resource_delete_cancel_data.rb'
    autoload :DeviceLifeCycleEventProperties,                     '2018-01-01/generated/azure_event_grid/models/device_life_cycle_event_properties.rb'
    autoload :ResourceActionFailureData,                          '2018-01-01/generated/azure_event_grid/models/resource_action_failure_data.rb'
    autoload :DeviceConnectionStateEventProperties,               '2018-01-01/generated/azure_event_grid/models/device_connection_state_event_properties.rb'
    autoload :EventGridEvent,                                     '2018-01-01/generated/azure_event_grid/models/event_grid_event.rb'
    autoload :MediaLiveEventEncoderDisconnectedEventData,         '2018-01-01/generated/azure_event_grid/models/media_live_event_encoder_disconnected_event_data.rb'
    autoload :SubscriptionValidationResponse,                     '2018-01-01/generated/azure_event_grid/models/subscription_validation_response.rb'
    autoload :ContainerRegistryEventRequest,                      '2018-01-01/generated/azure_event_grid/models/container_registry_event_request.rb'
    autoload :StorageBlobCreatedEventData,                        '2018-01-01/generated/azure_event_grid/models/storage_blob_created_event_data.rb'
    autoload :MediaLiveEventIncomingVideoStreamsOutOfSyncEventData, '2018-01-01/generated/azure_event_grid/models/media_live_event_incoming_video_streams_out_of_sync_event_data.rb'
    autoload :DeviceTwinInfoProperties,                           '2018-01-01/generated/azure_event_grid/models/device_twin_info_properties.rb'
    autoload :DeviceConnectionStateEventInfo,                     '2018-01-01/generated/azure_event_grid/models/device_connection_state_event_info.rb'
    autoload :MediaJobOutputProgressEventData,                    '2018-01-01/generated/azure_event_grid/models/media_job_output_progress_event_data.rb'
    autoload :ContainerRegistryEventTarget,                       '2018-01-01/generated/azure_event_grid/models/container_registry_event_target.rb'
    autoload :MediaJobOutputStateChangeEventData,                 '2018-01-01/generated/azure_event_grid/models/media_job_output_state_change_event_data.rb'
    autoload :DeviceTwinInfo,                                     '2018-01-01/generated/azure_event_grid/models/device_twin_info.rb'
    autoload :MediaLiveEventTrackDiscontinuityDetectedEventData,  '2018-01-01/generated/azure_event_grid/models/media_live_event_track_discontinuity_detected_event_data.rb'
    autoload :DeviceTwinMetadata,                                 '2018-01-01/generated/azure_event_grid/models/device_twin_metadata.rb'
    autoload :MediaLiveEventIngestHeartbeatEventData,             '2018-01-01/generated/azure_event_grid/models/media_live_event_ingest_heartbeat_event_data.rb'
    autoload :MediaLiveEventConnectionRejectedEventData,          '2018-01-01/generated/azure_event_grid/models/media_live_event_connection_rejected_event_data.rb'
    autoload :MediaLiveEventIncomingDataChunkDroppedEventData,    '2018-01-01/generated/azure_event_grid/models/media_live_event_incoming_data_chunk_dropped_event_data.rb'
    autoload :IotHubDeviceCreatedEventData,                       '2018-01-01/generated/azure_event_grid/models/iot_hub_device_created_event_data.rb'
    autoload :IotHubDeviceDeletedEventData,                       '2018-01-01/generated/azure_event_grid/models/iot_hub_device_deleted_event_data.rb'
    autoload :IotHubDeviceConnectedEventData,                     '2018-01-01/generated/azure_event_grid/models/iot_hub_device_connected_event_data.rb'
    autoload :IotHubDeviceDisconnectedEventData,                  '2018-01-01/generated/azure_event_grid/models/iot_hub_device_disconnected_event_data.rb'
    autoload :ContainerRegistryImagePushedEventData,              '2018-01-01/generated/azure_event_grid/models/container_registry_image_pushed_event_data.rb'
    autoload :ContainerRegistryImageDeletedEventData,             '2018-01-01/generated/azure_event_grid/models/container_registry_image_deleted_event_data.rb'
    autoload :MediaJobOutputAsset,                                '2018-01-01/generated/azure_event_grid/models/media_job_output_asset.rb'
    autoload :MediaJobScheduledEventData,                         '2018-01-01/generated/azure_event_grid/models/media_job_scheduled_event_data.rb'
    autoload :MediaJobProcessingEventData,                        '2018-01-01/generated/azure_event_grid/models/media_job_processing_event_data.rb'
    autoload :MediaJobCancelingEventData,                         '2018-01-01/generated/azure_event_grid/models/media_job_canceling_event_data.rb'
    autoload :MediaJobFinishedEventData,                          '2018-01-01/generated/azure_event_grid/models/media_job_finished_event_data.rb'
    autoload :MediaJobCanceledEventData,                          '2018-01-01/generated/azure_event_grid/models/media_job_canceled_event_data.rb'
    autoload :MediaJobErroredEventData,                           '2018-01-01/generated/azure_event_grid/models/media_job_errored_event_data.rb'
    autoload :MediaJobOutputCanceledEventData,                    '2018-01-01/generated/azure_event_grid/models/media_job_output_canceled_event_data.rb'
    autoload :MediaJobOutputCancelingEventData,                   '2018-01-01/generated/azure_event_grid/models/media_job_output_canceling_event_data.rb'
    autoload :MediaJobOutputErroredEventData,                     '2018-01-01/generated/azure_event_grid/models/media_job_output_errored_event_data.rb'
    autoload :MediaJobOutputFinishedEventData,                    '2018-01-01/generated/azure_event_grid/models/media_job_output_finished_event_data.rb'
    autoload :MediaJobOutputProcessingEventData,                  '2018-01-01/generated/azure_event_grid/models/media_job_output_processing_event_data.rb'
    autoload :MediaJobOutputScheduledEventData,                   '2018-01-01/generated/azure_event_grid/models/media_job_output_scheduled_event_data.rb'
    autoload :MediaJobState,                                      '2018-01-01/generated/azure_event_grid/models/media_job_state.rb'
    autoload :MediaJobErrorCode,                                  '2018-01-01/generated/azure_event_grid/models/media_job_error_code.rb'
    autoload :MediaJobErrorCategory,                              '2018-01-01/generated/azure_event_grid/models/media_job_error_category.rb'
    autoload :MediaJobRetry,                                      '2018-01-01/generated/azure_event_grid/models/media_job_retry.rb'
  end
end
