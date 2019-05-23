# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # Parameters supplied to the Regenerate Authorization Rule operation,
    # specifies which key needs to be reset.
    #
    class RegenerateAccessKeyParameters

      include MsRestAzure

      # @return [KeyType] The access key to regenerate. Possible values
      # include: 'PrimaryKey', 'SecondaryKey'
      attr_accessor :key_type

      # @return [String] Optional, if the key value provided, is reset for
      # KeyType value or autogenerate Key value set for keyType
      attr_accessor :key


      #
      # Mapper for RegenerateAccessKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegenerateAccessKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateAccessKeyParameters',
            model_properties: {
              key_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyType',
                type: {
                  name: 'Enum',
                  module: 'KeyType'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
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
