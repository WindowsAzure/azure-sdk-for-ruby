# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_09_01
  module Models
    #
    # The logs.
    #
    class Logs

      include MsRestAzure

      # @return [String] The content of the log.
      attr_accessor :content


      #
      # Mapper for Logs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Logs',
          type: {
            name: 'Composite',
            class_name: 'Logs',
            model_properties: {
              content: {
                required: false,
                serialized_name: 'content',
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
