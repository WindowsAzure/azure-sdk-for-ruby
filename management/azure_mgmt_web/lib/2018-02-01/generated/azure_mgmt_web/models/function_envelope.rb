# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Web Job Information.
    #
    class FunctionEnvelope < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Function App ID.
      attr_accessor :function_app_id

      # @return [String] Script root path URI.
      attr_accessor :script_root_path_href

      # @return [String] Script URI.
      attr_accessor :script_href

      # @return [String] Config URI.
      attr_accessor :config_href

      # @return [String] Secrets file URI.
      attr_accessor :secrets_file_href

      # @return [String] Function URI.
      attr_accessor :href

      # @return Config information.
      attr_accessor :config

      # @return [Hash{String => String}] File list.
      attr_accessor :files

      # @return [String] Test data used when testing via the Azure Portal.
      attr_accessor :test_data


      #
      # Mapper for FunctionEnvelope class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FunctionEnvelope',
          type: {
            name: 'Composite',
            class_name: 'FunctionEnvelope',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              function_app_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.function_app_id',
                type: {
                  name: 'String'
                }
              },
              script_root_path_href: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.script_root_path_href',
                type: {
                  name: 'String'
                }
              },
              script_href: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.script_href',
                type: {
                  name: 'String'
                }
              },
              config_href: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.config_href',
                type: {
                  name: 'String'
                }
              },
              secrets_file_href: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secrets_file_href',
                type: {
                  name: 'String'
                }
              },
              href: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.href',
                type: {
                  name: 'String'
                }
              },
              config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.config',
                type: {
                  name: 'Object'
                }
              },
              files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.files',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              test_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.test_data',
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
