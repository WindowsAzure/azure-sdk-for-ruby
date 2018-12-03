# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PowerBiEmbedded::Mgmt::V2016_01_29
  module Models
    #
    # Model object.
    #
    #
    class Display

      include MsRestAzure

      # @return [String] The localized friendly form of the resource provider
      # name. This form is also expected to include the publisher/company
      # responsible. Use Title Casing. Begin with "Microsoft" for 1st party
      # services.
      attr_accessor :provider

      # @return [String] The localized friendly form of the resource type
      # related to this action/operation. This form should match the public
      # documentation for the resource provider. Use Title Casing. For
      # examples, refer to the "name" section.
      attr_accessor :resource

      # @return [String] The localized friendly name for the operation as shown
      # to the user. This name should be concise (to fit in drop downs), but
      # clear (self-documenting). Use Title Casing and include the
      # entity/resource to which it applies.
      attr_accessor :operation

      # @return [String] The localized friendly description for the operation
      # as shown to the user. This description should be thorough, yet concise.
      # It will be used in tool-tips and detailed views.
      attr_accessor :description

      # @return [String] The intended executor of the operation; governs the
      # display of the operation in the RBAC UX and the audit logs UX. Default
      # value is 'user,system'
      attr_accessor :origin


      #
      # Mapper for Display class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Display',
          type: {
            name: 'Composite',
            class_name: 'Display',
            model_properties: {
              provider: {
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              origin: {
                required: false,
                serialized_name: 'origin',
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
