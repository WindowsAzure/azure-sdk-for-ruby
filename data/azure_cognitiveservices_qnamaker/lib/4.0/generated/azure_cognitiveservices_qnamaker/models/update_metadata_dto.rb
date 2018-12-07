# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # PATCH Body schema to represent list of Metadata to be updated
    #
    class UpdateMetadataDTO

      include MsRestAzure

      # @return [Array<MetadataDTO>] List of Metadata associated with answer to
      # be deleted
      attr_accessor :delete

      # @return [Array<MetadataDTO>] List of Metadat associated with answer to
      # be added
      attr_accessor :add


      #
      # Mapper for UpdateMetadataDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateMetadataDTO',
          type: {
            name: 'Composite',
            class_name: 'UpdateMetadataDTO',
            model_properties: {
              delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delete',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetadataDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataDTO'
                      }
                  }
                }
              },
              add: {
                client_side_validation: true,
                required: false,
                serialized_name: 'add',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetadataDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataDTO'
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