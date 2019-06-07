# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # Lease Container request schema.
    #
    class LeaseContainerRequest

      include MsRestAzure

      # @return [Enum] Specifies the lease action. Can be one of the available
      # actions. Possible values include: 'Acquire', 'Renew', 'Change',
      # 'Release', 'Break'
      attr_accessor :action

      # @return [String] Identifies the lease. Can be specified in any valid
      # GUID string format.
      attr_accessor :lease_id

      # @return [Integer] Optional. For a break action, proposed duration the
      # lease should continue before it is broken, in seconds, between 0 and
      # 60.
      attr_accessor :break_period

      # @return [Integer] Required for acquire. Specifies the duration of the
      # lease, in seconds, or negative one (-1) for a lease that never expires.
      attr_accessor :lease_duration

      # @return [String] Optional for acquire, required for change. Proposed
      # lease ID, in a GUID string format.
      attr_accessor :proposed_lease_id


      #
      # Mapper for LeaseContainerRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LeaseContainerRequest',
          type: {
            name: 'Composite',
            class_name: 'LeaseContainerRequest',
            model_properties: {
              action: {
                required: true,
                serialized_name: 'action',
                type: {
                  name: 'String'
                }
              },
              lease_id: {
                required: false,
                serialized_name: 'leaseId',
                type: {
                  name: 'String'
                }
              },
              break_period: {
                required: false,
                serialized_name: 'breakPeriod',
                type: {
                  name: 'Number'
                }
              },
              lease_duration: {
                required: false,
                serialized_name: 'leaseDuration',
                type: {
                  name: 'Number'
                }
              },
              proposed_lease_id: {
                required: false,
                serialized_name: 'proposedLeaseId',
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
