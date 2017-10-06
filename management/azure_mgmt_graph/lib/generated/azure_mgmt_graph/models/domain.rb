# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Active Directory Domain information.
    #
    class Domain

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the type of the authentication into the domain.
      attr_accessor :authentication_type

      # @return [Boolean] if this is the default domain in the tenant.
      attr_accessor :is_default

      # @return [Boolean] if this domain's ownership is verified.
      attr_accessor :is_verified

      # @return [String] the domain name.
      attr_accessor :name


      #
      # Mapper for Domain class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Domain',
          type: {
            name: 'Composite',
            class_name: 'Domain',
            model_properties: {
              authentication_type: {
                required: false,
                read_only: true,
                serialized_name: 'authenticationType',
                type: {
                  name: 'String'
                }
              },
              is_default: {
                required: false,
                read_only: true,
                serialized_name: 'isDefault',
                type: {
                  name: 'Boolean'
                }
              },
              is_verified: {
                required: false,
                read_only: true,
                serialized_name: 'isVerified',
                type: {
                  name: 'Boolean'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
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
