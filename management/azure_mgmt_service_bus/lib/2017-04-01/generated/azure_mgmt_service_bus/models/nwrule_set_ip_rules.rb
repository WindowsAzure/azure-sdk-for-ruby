# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # Description of NetWorkRuleSet - IpRules resource.
    #
    class NWRuleSetIpRules

      include MsRestAzure

      # @return [String] IP Mask
      attr_accessor :ip_mask

      # @return [NetworkRuleIPAction] The IP Filter Action. Possible values
      # include: 'Allow'. Default value: 'Allow' .
      attr_accessor :action


      #
      # Mapper for NWRuleSetIpRules class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NWRuleSetIpRules',
          type: {
            name: 'Composite',
            class_name: 'NWRuleSetIpRules',
            model_properties: {
              ip_mask: {
                required: false,
                serialized_name: 'ipMask',
                type: {
                  name: 'String'
                }
              },
              action: {
                required: false,
                serialized_name: 'action',
                default_value: 'Allow',
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
