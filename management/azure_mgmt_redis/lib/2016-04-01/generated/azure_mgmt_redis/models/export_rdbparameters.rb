# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2016_04_01
  module Models
    #
    # Parameters for Redis export operation.
    #
    class ExportRDBParameters

      include MsRestAzure

      # @return [String] File format.
      attr_accessor :format

      # @return [String] Prefix to use for exported files.
      attr_accessor :prefix

      # @return [String] Container name to export to.
      attr_accessor :container


      #
      # Mapper for ExportRDBParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExportRDBParameters',
          type: {
            name: 'Composite',
            class_name: 'ExportRDBParameters',
            model_properties: {
              format: {
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              prefix: {
                required: true,
                serialized_name: 'prefix',
                type: {
                  name: 'String'
                }
              },
              container: {
                required: true,
                serialized_name: 'container',
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
