# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedApplications::Mgmt::V2016_09_01_preview
  module Models
    #
    # Plan for the appliance.
    #
    class PlanPatchable

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The plan name.
      attr_accessor :name

      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] The product code.
      attr_accessor :product

      # @return [String] The promotion code.
      attr_accessor :promotion_code

      # @return [String] The plan's version.
      attr_accessor :version


      #
      # Mapper for PlanPatchable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PlanPatchable',
          type: {
            name: 'Composite',
            class_name: 'PlanPatchable',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                serialized_name: 'product',
                type: {
                  name: 'String'
                }
              },
              promotion_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'promotionCode',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
