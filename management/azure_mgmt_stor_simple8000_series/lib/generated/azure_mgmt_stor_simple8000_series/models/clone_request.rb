# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The clone job request.
    #
    class CloneRequest

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The path ID of the device which will act as the clone
      # target.
      attr_accessor :target_device_id

      # @return [String] The name of the new volume which will be created and
      # the backup will be cloned into.
      attr_accessor :target_volume_name

      # @return [Array<String>] The list of path IDs of the access control
      # records to be associated to the new cloned volume.
      attr_accessor :target_access_control_record_ids

      # @return [BackupElement] The backup element that is cloned.
      attr_accessor :backup_element


      #
      # Mapper for CloneRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CloneRequest',
          type: {
            name: 'Composite',
            class_name: 'CloneRequest',
            model_properties: {
              target_device_id: {
                required: true,
                serialized_name: 'targetDeviceId',
                type: {
                  name: 'String'
                }
              },
              target_volume_name: {
                required: true,
                serialized_name: 'targetVolumeName',
                type: {
                  name: 'String'
                }
              },
              target_access_control_record_ids: {
                required: true,
                serialized_name: 'targetAccessControlRecordIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              backup_element: {
                required: true,
                serialized_name: 'backupElement',
                type: {
                  name: 'Composite',
                  class_name: 'BackupElement'
                }
              }
            }
          }
        }
      end
    end
  end
end
