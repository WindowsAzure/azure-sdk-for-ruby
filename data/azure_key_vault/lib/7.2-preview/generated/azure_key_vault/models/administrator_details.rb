# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Details of the organization administrator of the certificate issuer.
    #
    class AdministratorDetails

      include MsRestAzure

      # @return [String] First name.
      attr_accessor :first_name

      # @return [String] Last name.
      attr_accessor :last_name

      # @return [String] Email address.
      attr_accessor :email_address

      # @return [String] Phone number.
      attr_accessor :phone


      #
      # Mapper for AdministratorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdministratorDetails',
          type: {
            name: 'Composite',
            class_name: 'AdministratorDetails',
            model_properties: {
              first_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'first_name',
                type: {
                  name: 'String'
                }
              },
              last_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'last_name',
                type: {
                  name: 'String'
                }
              },
              email_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              phone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'phone',
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
