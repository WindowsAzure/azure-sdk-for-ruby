# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  module Models
    #
    # Properties of availability state.
    #
    class AvailabilityStatusProperties

      include MsRestAzure

      # @return [AvailabilityStateValues] Availability status of the resource.
      # When it is null, this availabilityStatus object represents an
      # availability impacting event. Possible values include: 'Available',
      # 'Unavailable', 'Degraded', 'Unknown'
      attr_accessor :availability_state

      # @return [String] Summary description of the availability status.
      attr_accessor :summary

      # @return [String] Details of the availability status.
      attr_accessor :detailed_status

      # @return [String] When the resource's availabilityState is Unavailable,
      # it describes where the health impacting event was originated. Examples
      # are planned, unplanned, user initiated or an outage etc.
      attr_accessor :reason_type

      # @return [DateTime] When the resource's availabilityState is
      # Unavailable, it provides the Timestamp for when the health impacting
      # event was received.
      attr_accessor :root_cause_attribution_time

      # @return [String] In case of an availability impacting event, it
      # describes when the health impacting event was originated. Examples are
      # Lifecycle, Downtime, Fault Analysis etc.
      attr_accessor :health_event_type

      # @return [String] In case of an availability impacting event, it
      # describes where the health impacting event was originated. Examples are
      # PlatformInitiated, UserInitiated etc.
      attr_accessor :health_event_cause

      # @return [String] In case of an availability impacting event, it
      # describes the category of a PlatformInitiated health impacting event.
      # Examples are Planned, Unplanned etc.
      attr_accessor :health_event_category

      # @return [String] It is a unique Id that identifies the event
      attr_accessor :health_event_id

      # @return [DateTime] When the resource's availabilityState is Unavailable
      # and the reasonType is not User Initiated, it provides the date and time
      # for when the issue is expected to be resolved.
      attr_accessor :resolution_eta

      # @return [DateTime] Timestamp for when last change in health status
      # occurred.
      attr_accessor :occured_time

      # @return [ReasonChronicityTypes] Chronicity of the availability
      # transition. Possible values include: 'Transient', 'Persistent'
      attr_accessor :reason_chronicity

      # @return [DateTime] Timestamp for when the health was last checked.
      attr_accessor :reported_time

      # @return [AvailabilityStatusPropertiesRecentlyResolved] An annotation
      # describing a change in the availabilityState to Available from
      # Unavailable with a reasonType of type Unplanned
      attr_accessor :recently_resolved

      # @return [Array<RecommendedAction>] Lists actions the user can take
      # based on the current availabilityState of the resource.
      attr_accessor :recommended_actions

      # @return [Array<ServiceImpactingEvent>] Lists the service impacting
      # events that may be affecting the health of the resource.
      attr_accessor :service_impacting_events


      #
      # Mapper for AvailabilityStatusProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'availabilityStatus_properties',
          type: {
            name: 'Composite',
            class_name: 'AvailabilityStatusProperties',
            model_properties: {
              availability_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'availabilityState',
                type: {
                  name: 'String'
                }
              },
              summary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summary',
                type: {
                  name: 'String'
                }
              },
              detailed_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'detailedStatus',
                type: {
                  name: 'String'
                }
              },
              reason_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reasonType',
                type: {
                  name: 'String'
                }
              },
              root_cause_attribution_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rootCauseAttributionTime',
                type: {
                  name: 'DateTime'
                }
              },
              health_event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthEventType',
                type: {
                  name: 'String'
                }
              },
              health_event_cause: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthEventCause',
                type: {
                  name: 'String'
                }
              },
              health_event_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthEventCategory',
                type: {
                  name: 'String'
                }
              },
              health_event_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthEventId',
                type: {
                  name: 'String'
                }
              },
              resolution_eta: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resolutionETA',
                type: {
                  name: 'DateTime'
                }
              },
              occured_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'occuredTime',
                type: {
                  name: 'DateTime'
                }
              },
              reason_chronicity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reasonChronicity',
                type: {
                  name: 'String'
                }
              },
              reported_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reportedTime',
                type: {
                  name: 'DateTime'
                }
              },
              recently_resolved: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recentlyResolved',
                type: {
                  name: 'Composite',
                  class_name: 'AvailabilityStatusPropertiesRecentlyResolved'
                }
              },
              recommended_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendedActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendedActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedAction'
                      }
                  }
                }
              },
              service_impacting_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceImpactingEvents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceImpactingEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceImpactingEvent'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
