# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # This class represents the details for a failover job.
    #
    class FailoverJobDetails < JobDetails

      include MsRestAzure


      def initialize
        @instanceType = "FailoverJobDetails"
      end

      attr_accessor :instanceType

      # @return [Array<FailoverReplicationProtectedItemDetails>] The test VM
      # details.
      attr_accessor :protected_item_details


      #
      # Mapper for FailoverJobDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverJobDetails',
          type: {
            name: 'Composite',
            class_name: 'FailoverJobDetails',
            model_properties: {
              affected_object_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedObjectDetails',
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
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              protected_item_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FailoverReplicationProtectedItemDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverReplicationProtectedItemDetails'
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