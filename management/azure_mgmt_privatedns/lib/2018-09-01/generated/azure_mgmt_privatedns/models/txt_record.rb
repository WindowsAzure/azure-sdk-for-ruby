# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PrivateDns::Mgmt::V2018_09_01
  module Models
    #
    # A TXT record.
    #
    class TxtRecord

      include MsRestAzure

      # @return [Array<String>] The text value of this TXT record.
      attr_accessor :value


      #
      # Mapper for TxtRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TxtRecord',
          type: {
            name: 'Composite',
            class_name: 'TxtRecord',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
