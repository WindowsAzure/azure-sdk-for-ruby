# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview
  module Models
    #
    # Set the connectivity, storage and workload settings.
    #
    class ServerConfigurationsManagementSettings

      include MsRestAzure

      # @return [SqlConnectivityUpdateSettings] SQL connectivity type settings.
      attr_accessor :sql_connectivity_update_settings

      # @return [SqlWorkloadTypeUpdateSettings] SQL workload type settings.
      attr_accessor :sql_workload_type_update_settings

      # @return [SqlStorageUpdateSettings] SQL storage update settings.
      attr_accessor :sql_storage_update_settings

      # @return [AdditionalFeaturesServerConfigurations] Additional SQL feature
      # settings.
      attr_accessor :additional_features_server_configurations


      #
      # Mapper for ServerConfigurationsManagementSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerConfigurationsManagementSettings',
          type: {
            name: 'Composite',
            class_name: 'ServerConfigurationsManagementSettings',
            model_properties: {
              sql_connectivity_update_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlConnectivityUpdateSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectivityUpdateSettings'
                }
              },
              sql_workload_type_update_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlWorkloadTypeUpdateSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SqlWorkloadTypeUpdateSettings'
                }
              },
              sql_storage_update_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlStorageUpdateSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SqlStorageUpdateSettings'
                }
              },
              additional_features_server_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalFeaturesServerConfigurations',
                type: {
                  name: 'Composite',
                  class_name: 'AdditionalFeaturesServerConfigurations'
                }
              }
            }
          }
        }
      end
    end
  end
end
