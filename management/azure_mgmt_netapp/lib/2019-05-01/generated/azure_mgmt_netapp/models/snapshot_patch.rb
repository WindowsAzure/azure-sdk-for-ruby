# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_05_01
  module Models
    #
    # Snapshot patch
    #
    class SnapshotPatch

      include MsRestAzure

      # @return Resource tags
      attr_accessor :tags


      #
      # Mapper for SnapshotPatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'snapshotPatch',
          type: {
            name: 'Composite',
            class_name: 'SnapshotPatch',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
