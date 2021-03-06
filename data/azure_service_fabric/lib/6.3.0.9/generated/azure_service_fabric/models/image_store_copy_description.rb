# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Information about how to copy image store content from one image store
    # relative path to another image store relative path.
    #
    class ImageStoreCopyDescription

      include MsRestAzure

      # @return [String] The relative path of source image store content to be
      # copied from.
      attr_accessor :remote_source

      # @return [String] The relative path of destination image store content
      # to be copied to.
      attr_accessor :remote_destination

      # @return [Array<String>] The list of the file names to be skipped for
      # copying.
      attr_accessor :skip_files

      # @return [Boolean] Indicates whether to check mark file during copying.
      # The property is true if checking mark file is required, false
      # otherwise. The mark file is used to check whether the folder is well
      # constructed. If the property is true and mark file does not exist, the
      # copy is skipped.
      attr_accessor :check_mark_file


      #
      # Mapper for ImageStoreCopyDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageStoreCopyDescription',
          type: {
            name: 'Composite',
            class_name: 'ImageStoreCopyDescription',
            model_properties: {
              remote_source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'RemoteSource',
                type: {
                  name: 'String'
                }
              },
              remote_destination: {
                client_side_validation: true,
                required: true,
                serialized_name: 'RemoteDestination',
                type: {
                  name: 'String'
                }
              },
              skip_files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SkipFiles',
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
              },
              check_mark_file: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CheckMarkFile',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
