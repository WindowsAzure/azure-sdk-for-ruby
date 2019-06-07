# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # A tag of the LegalHold of a blob container.
    #
    class TagProperty

      include MsRestAzure

      # @return [String] The tag value.
      attr_accessor :tag

      # @return [DateTime] Returns the date and time the tag was added.
      attr_accessor :timestamp

      # @return [String] Returns the Object ID of the user who added the tag.
      attr_accessor :object_identifier

      # @return [String] Returns the Tenant ID that issued the token for the
      # user who added the tag.
      attr_accessor :tenant_id

      # @return [String] Returns the User Principal Name of the user who added
      # the tag.
      attr_accessor :upn


      #
      # Mapper for TagProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TagProperty',
          type: {
            name: 'Composite',
            class_name: 'TagProperty',
            model_properties: {
              tag: {
                required: false,
                read_only: true,
                serialized_name: 'tag',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              object_identifier: {
                required: false,
                read_only: true,
                serialized_name: 'objectIdentifier',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              upn: {
                required: false,
                read_only: true,
                serialized_name: 'upn',
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
