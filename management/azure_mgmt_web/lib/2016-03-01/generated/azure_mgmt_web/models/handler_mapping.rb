# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # The IIS handler mappings used to define which handler processes HTTP
    # requests with certain extension.
    # For example, it is used to configure php-cgi.exe process to handle all
    # HTTP requests with *.php extension.
    #
    class HandlerMapping

      include MsRestAzure

      # @return [String] Requests with this extension will be handled using the
      # specified FastCGI application.
      attr_accessor :extension

      # @return [String] The absolute path to the FastCGI application.
      attr_accessor :script_processor

      # @return [String] Command-line arguments to be passed to the script
      # processor.
      attr_accessor :arguments


      #
      # Mapper for HandlerMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HandlerMapping',
          type: {
            name: 'Composite',
            class_name: 'HandlerMapping',
            model_properties: {
              extension: {
                required: false,
                serialized_name: 'extension',
                type: {
                  name: 'String'
                }
              },
              script_processor: {
                required: false,
                serialized_name: 'scriptProcessor',
                type: {
                  name: 'String'
                }
              },
              arguments: {
                required: false,
                serialized_name: 'arguments',
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
