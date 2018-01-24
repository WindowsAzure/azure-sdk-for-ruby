# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Request parameters for adding a owner to an application.
    #
    class ApplicationAddOwnerParameters

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] A owner object URL, such as
      # "https://graph.windows.net/0b1f9851-1bf0-433f-aec3-cb9272f093dc/directoryObjects/f260bbc4-c254-447b-94cf-293b5ec434dd",
      # where "0b1f9851-1bf0-433f-aec3-cb9272f093dc" is the tenantId and
      # "f260bbc4-c254-447b-94cf-293b5ec434dd" is the objectId of the owner
      # (user, application, servicePrincipal, group) to be added.
      attr_accessor :url


      #
      # Mapper for ApplicationAddOwnerParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationAddOwnerParameters',
          type: {
            name: 'Composite',
            class_name: 'ApplicationAddOwnerParameters',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              url: {
                required: true,
                serialized_name: 'url',
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
