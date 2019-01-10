# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] Gets or sets the name. Possible values include:
      # 'NotSpecified', 'Free', 'Shared', 'Basic', 'Standard', 'Premium'
      attr_accessor :name

      # @return [ResourceReference] Gets or sets the reference to plan.
      attr_accessor :plan


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'SkuName'
                }
              },
              plan: {
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
