# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The X12 message identifier.
    #
    class X12MessageIdentifier

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The message id.
      attr_accessor :message_id


      #
      # Mapper for X12MessageIdentifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12MessageIdentifier',
          type: {
            name: 'Composite',
            class_name: 'X12MessageIdentifier',
            model_properties: {
              message_id: {
                required: true,
                serialized_name: 'messageId',
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
