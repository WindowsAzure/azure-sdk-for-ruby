# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_10_01
  module Models
    #
    # The billing information of the resource.(e.g. basic vs. standard)
    #
    class ResourceSku

      include MsRestAzure

      # @return [String] The name of the SKU. This is typically a letter +
      # number code, such as A0 or P3.  Required (if sku is specified)
      attr_accessor :name

      # @return [SignalRSkuTier] Optional tier of this particular SKU. `Basic`
      # is deprecated, use `Standard` instead. Possible values include: 'Free',
      # 'Basic', 'Standard', 'Premium'
      attr_accessor :tier

      # @return [String] Optional, string. When the name field is the
      # combination of tier and some other value, this would be the standalone
      # code.
      attr_accessor :size

      # @return [String] Optional, string. If the service has different
      # generations of hardware, for the same SKU, then that can be captured
      # here.
      attr_accessor :family

      # @return [Integer] Optional, integer. If the SKU supports scale out/in
      # then the capacity integer should be included. If scale out/in is not
      # possible for the resource this may be omitted.
      attr_accessor :capacity


      #
      # Mapper for ResourceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSku',
          type: {
            name: 'Composite',
            class_name: 'ResourceSku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              size: {
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end