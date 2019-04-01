# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_07_01
  module Models
    #
    # Resource Move Info.
    #
    class ResourcesMoveInfo

      include MsRestAzure

      # @return [String] Target resource group.
      attr_accessor :target_resource_group

      # @return [Array<String>] Collection of Resources.
      attr_accessor :resources


      #
      # Mapper for ResourcesMoveInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourcesMoveInfo',
          type: {
            name: 'Composite',
            class_name: 'ResourcesMoveInfo',
            model_properties: {
              target_resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResourceGroup',
                type: {
                  name: 'String'
                }
              },
              resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
