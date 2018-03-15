# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2018_03_01_preview
  module Models
    #
    # An A record.
    #
    class ARecord

      include MsRestAzure

      # @return [String] The IPv4 address of this A record.
      attr_accessor :ipv4address


      #
      # Mapper for ARecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ARecord',
          type: {
            name: 'Composite',
            class_name: 'ARecord',
            model_properties: {
              ipv4address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipv4Address',
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
