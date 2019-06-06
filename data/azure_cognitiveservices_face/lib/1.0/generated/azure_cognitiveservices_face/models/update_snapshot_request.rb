# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Request body for updating a snapshot, with a combination of user defined
    # apply scope and user specified data.
    #
    class UpdateSnapshotRequest

      include MsRestAzure

      # @return Array of the target Face subscription ids for the snapshot,
      # specified by the user who created the snapshot when calling Snapshot -
      # Take. For each snapshot, only subscriptions included in the applyScope
      # of Snapshot - Take can apply it.
      attr_accessor :apply_scope

      # @return [String] User specified data about the snapshot for any
      # purpose. Length should not exceed 16KB.
      attr_accessor :user_data


      #
      # Mapper for UpdateSnapshotRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateSnapshotRequest',
          type: {
            name: 'Composite',
            class_name: 'UpdateSnapshotRequest',
            model_properties: {
              apply_scope: {
                required: false,
                serialized_name: 'applyScope',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              user_data: {
                required: false,
                serialized_name: 'userData',
                constraints: {
                  MaxLength: 16384
                },
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