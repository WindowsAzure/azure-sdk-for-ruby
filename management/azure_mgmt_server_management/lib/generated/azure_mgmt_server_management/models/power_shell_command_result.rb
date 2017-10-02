# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServerManagement
  module Models
    #
    # Results from invoking a PowerShell command.
    #
    class PowerShellCommandResult

      include MsRestAzure

      # @return [Integer] The type of message.
      attr_accessor :message_type

      # @return [String] The HTML color string representing the foreground
      # color.
      attr_accessor :foreground_color

      # @return [String] The HTML color string representing the background
      # color.
      attr_accessor :background_color

      # @return [String] Actual result text from the PowerShell Command.
      attr_accessor :value

      # @return [String] The interactive prompt message.
      attr_accessor :prompt

      # @return [Integer] The exit code from a executable that was called from
      # PowerShell.
      attr_accessor :exit_code

      # @return [Integer] ID of the prompt message.
      attr_accessor :id

      # @return [String] Text that precedes the prompt.
      attr_accessor :caption

      # @return [String] Text of the prompt.
      attr_accessor :message

      # @return [Array<PromptFieldDescription>] Collection of
      # PromptFieldDescription objects that contains the user input.
      attr_accessor :descriptions


      #
      # Mapper for PowerShellCommandResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PowerShellCommandResult',
          type: {
            name: 'Composite',
            class_name: 'PowerShellCommandResult',
            model_properties: {
              message_type: {
                required: false,
                serialized_name: 'messageType',
                type: {
                  name: 'Number'
                }
              },
              foreground_color: {
                required: false,
                serialized_name: 'foregroundColor',
                type: {
                  name: 'String'
                }
              },
              background_color: {
                required: false,
                serialized_name: 'backgroundColor',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              prompt: {
                required: false,
                serialized_name: 'prompt',
                type: {
                  name: 'String'
                }
              },
              exit_code: {
                required: false,
                serialized_name: 'exitCode',
                type: {
                  name: 'Number'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              caption: {
                required: false,
                serialized_name: 'caption',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              descriptions: {
                required: false,
                serialized_name: 'descriptions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PromptFieldDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PromptFieldDescription'
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
