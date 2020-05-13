# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_03_01
  module Models
    #
    # P2S Vpn connection detailed health written to sas url.
    #
    class P2SVpnConnectionHealth

      include MsRestAzure

      # @return [String] Returned sas url of the blob to which the p2s vpn
      # connection detailed health will be written.
      attr_accessor :sas_url


      #
      # Mapper for P2SVpnConnectionHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'P2SVpnConnectionHealth',
          type: {
            name: 'Composite',
            class_name: 'P2SVpnConnectionHealth',
            model_properties: {
              sas_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sasUrl',
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
