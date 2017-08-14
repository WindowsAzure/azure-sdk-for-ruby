# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Specifies the web app that snapshot contents will be written to.
    #
    class SnapshotRecoveryTarget

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Geographical location of the target web app, e.g.
      # SouthEastAsia, SouthCentralUS
      attr_accessor :location

      # @return [String] ARM resource ID of the target app.
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}
      # for production slots and
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/slots/{slotName}
      # for other slots.
      attr_accessor :id


      #
      # Mapper for SnapshotRecoveryTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SnapshotRecoveryTarget',
          type: {
            name: 'Composite',
            class_name: 'SnapshotRecoveryTarget',
            model_properties: {
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
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
