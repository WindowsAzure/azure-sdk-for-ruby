# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The Edifact one way agreement.
    #
    class EdifactOneWayAgreement

      include MsRestAzure

      # @return [BusinessIdentity] The sender business identity
      attr_accessor :sender_business_identity

      # @return [BusinessIdentity] The receiver business identity
      attr_accessor :receiver_business_identity

      # @return [EdifactProtocolSettings] The EDIFACT protocol settings.
      attr_accessor :protocol_settings


      #
      # Mapper for EdifactOneWayAgreement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactOneWayAgreement',
          type: {
            name: 'Composite',
            class_name: 'EdifactOneWayAgreement',
            model_properties: {
              sender_business_identity: {
                required: true,
                serialized_name: 'senderBusinessIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'BusinessIdentity'
                }
              },
              receiver_business_identity: {
                required: true,
                serialized_name: 'receiverBusinessIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'BusinessIdentity'
                }
              },
              protocol_settings: {
                required: true,
                serialized_name: 'protocolSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactProtocolSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
