# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory Key Credential information.
    #
    class KeyCredential

      include MsRestAzure

      # @return [DateTime] Start date.
      attr_accessor :start_date

      # @return [DateTime] End date.
      attr_accessor :end_date

      # @return [String] Key value.
      attr_accessor :value

      # @return [String] Key ID.
      attr_accessor :key_id

      # @return [String] Usage. Acceptable values are 'Verify' and 'Sign'.
      attr_accessor :usage

      # @return [String] Type. Acceptable values are 'AsymmetricX509Cert' and
      # 'Symmetric'.
      attr_accessor :type


      #
      # Mapper for KeyCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyCredential',
          type: {
            name: 'Composite',
            class_name: 'KeyCredential',
            model_properties: {
              start_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endDate',
                type: {
                  name: 'DateTime'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              key_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyId',
                type: {
                  name: 'String'
                }
              },
              usage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'usage',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
