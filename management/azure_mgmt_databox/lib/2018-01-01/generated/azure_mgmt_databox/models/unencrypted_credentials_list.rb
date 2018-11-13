# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_01_01
  module Models
    #
    # List of unencrypted credentials for accessing device.
    #
    class UnencryptedCredentialsList

      include MsRestAzure

      # @return [Array<UnencryptedCredentials>] List of unencrypted
      # credentials.
      attr_accessor :value

      # @return [String] Link for the next set of unencrypted credentials.
      attr_accessor :next_link


      #
      # Mapper for UnencryptedCredentialsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UnencryptedCredentialsList',
          type: {
            name: 'Composite',
            class_name: 'UnencryptedCredentialsList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UnencryptedCredentialsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UnencryptedCredentials'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
