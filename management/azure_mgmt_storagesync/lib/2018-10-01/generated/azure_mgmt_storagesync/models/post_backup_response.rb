# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  module Models
    #
    # Post Backup Response
    #
    class PostBackupResponse

      include MsRestAzure

      # @return [String] cloud endpoint Name.
      attr_accessor :cloud_endpoint_name


      #
      # Mapper for PostBackupResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PostBackupResponse',
          type: {
            name: 'Composite',
            class_name: 'PostBackupResponse',
            model_properties: {
              cloud_endpoint_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'backupMetadata.cloudEndpointName',
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
