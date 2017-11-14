# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2015_05_01_preview
  module Models
    #
    # The parameters to update on the account.
    #
    class StorageAccountUpdateParameters < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [AccountType] Gets or sets the account type. Note that
      # StandardZRS and PremiumLRS accounts cannot be changed to other account
      # types, and other account types cannot be changed to StandardZRS or
      # PremiumLRS. Possible values include: 'Standard_LRS', 'Standard_ZRS',
      # 'Standard_GRS', 'Standard_RAGRS', 'Premium_LRS'
      attr_accessor :account_type

      # @return [CustomDomain] User domain assigned to the storage account.
      # Name is the CNAME source. Only one custom domain is supported per
      # storage account at this time. To clear the existing custom domain, use
      # an empty string for the custom domain name property.
      attr_accessor :custom_domain


      #
      # Mapper for StorageAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountUpdateParameters',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
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
              account_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accountType',
                type: {
                  name: 'Enum',
                  module: 'AccountType'
                }
              },
              custom_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customDomain',
                type: {
                  name: 'Composite',
                  class_name: 'CustomDomain'
                }
              }
            }
          }
        }
      end
    end
  end
end
