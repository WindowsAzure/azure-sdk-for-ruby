# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the dsc node configuration.
    #
    class DscNodeConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets or sets the node configuration name.
      attr_accessor :name

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [DateTime] Gets or sets creation time.
      attr_accessor :creation_time

      # @return [DscConfigurationAssociationProperty] Gets or sets the
      # configuration of the node.
      attr_accessor :configuration

      # @return [String] Gets or sets the id of the resource.
      attr_accessor :id


      #
      # Mapper for DscNodeConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscNodeConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DscNodeConfiguration',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'configuration',
                type: {
                  name: 'Composite',
                  class_name: 'DscConfigurationAssociationProperty'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
