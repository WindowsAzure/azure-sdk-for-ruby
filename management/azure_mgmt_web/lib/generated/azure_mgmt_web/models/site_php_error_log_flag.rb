# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Used for getting PHP error logging flag.
    #
    class SitePhpErrorLogFlag < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Local log_errors setting.
      attr_accessor :local_log_errors

      # @return [String] Master log_errors setting.
      attr_accessor :master_log_errors

      # @return [String] Local log_errors_max_len setting.
      attr_accessor :local_log_errors_max_length

      # @return [String] Master log_errors_max_len setting.
      attr_accessor :master_log_errors_max_length


      #
      # Mapper for SitePhpErrorLogFlag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SitePhpErrorLogFlag',
          type: {
            name: 'Composite',
            class_name: 'SitePhpErrorLogFlag',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              local_log_errors: {
                required: false,
                serialized_name: 'properties.localLogErrors',
                type: {
                  name: 'String'
                }
              },
              master_log_errors: {
                required: false,
                serialized_name: 'properties.masterLogErrors',
                type: {
                  name: 'String'
                }
              },
              local_log_errors_max_length: {
                required: false,
                serialized_name: 'properties.localLogErrorsMaxLength',
                type: {
                  name: 'String'
                }
              },
              master_log_errors_max_length: {
                required: false,
                serialized_name: 'properties.masterLogErrorsMaxLength',
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
