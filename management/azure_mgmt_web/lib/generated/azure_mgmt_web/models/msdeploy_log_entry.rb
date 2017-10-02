# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # MSDeploy log entry
    #
    class MSDeployLogEntry

      include MsRestAzure

      # @return [DateTime] Timestamp of log entry
      attr_accessor :time

      # @return [MSDeployLogEntryType] Log entry type. Possible values include:
      # 'Message', 'Warning', 'Error'
      attr_accessor :type

      # @return [String] Log entry message
      attr_accessor :message


      #
      # Mapper for MSDeployLogEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MSDeployLogEntry',
          type: {
            name: 'Composite',
            class_name: 'MSDeployLogEntry',
            model_properties: {
              time: {
                required: false,
                read_only: true,
                serialized_name: 'time',
                type: {
                  name: 'DateTime'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'MSDeployLogEntryType'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
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
