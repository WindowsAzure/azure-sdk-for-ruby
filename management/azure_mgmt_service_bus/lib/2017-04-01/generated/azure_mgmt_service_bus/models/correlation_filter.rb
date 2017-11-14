# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # Represents the correlation filter expression.
    #
    class CorrelationFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Identifier of the correlation.
      attr_accessor :correlation_id

      # @return [String] Identifier of the message.
      attr_accessor :message_id

      # @return [String] Address to send to.
      attr_accessor :to

      # @return [String] Address of the queue to reply to.
      attr_accessor :reply_to

      # @return [String] Application specific label.
      attr_accessor :label

      # @return [String] Session identifier.
      attr_accessor :session_id

      # @return [String] Session identifier to reply to.
      attr_accessor :reply_to_session_id

      # @return [String] Content type of the message.
      attr_accessor :content_type

      # @return [Boolean] Value that indicates whether the rule action requires
      # preprocessing. Default value: true .
      attr_accessor :requires_preprocessing


      #
      # Mapper for CorrelationFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CorrelationFilter',
          type: {
            name: 'Composite',
            class_name: 'CorrelationFilter',
            model_properties: {
              correlation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'correlationId',
                type: {
                  name: 'String'
                }
              },
              message_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'messageId',
                type: {
                  name: 'String'
                }
              },
              to: {
                client_side_validation: true,
                required: false,
                serialized_name: 'to',
                type: {
                  name: 'String'
                }
              },
              reply_to: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replyTo',
                type: {
                  name: 'String'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              session_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sessionId',
                type: {
                  name: 'String'
                }
              },
              reply_to_session_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replyToSessionId',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              requires_preprocessing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requiresPreprocessing',
                default_value: true,
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
