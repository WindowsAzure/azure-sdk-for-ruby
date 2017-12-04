# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2016_12_01
  module Models
    #
    # The List SAS credentials operation response.
    #
    class ListAccountSasResponse

      include MsRestAzure

      # @return [String] List SAS credentials of storage account.
      attr_accessor :account_sas_token


      #
      # Mapper for ListAccountSasResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListAccountSasResponse',
          type: {
            name: 'Composite',
            class_name: 'ListAccountSasResponse',
            model_properties: {
              account_sas_token: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'accountSasToken',
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
