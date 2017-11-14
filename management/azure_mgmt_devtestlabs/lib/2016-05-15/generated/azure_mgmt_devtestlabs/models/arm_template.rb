# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # An Azure Resource Manager template.
    #
    class ArmTemplate < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The display name of the ARM template.
      attr_accessor :display_name

      # @return [String] The description of the ARM template.
      attr_accessor :description

      # @return [String] The publisher of the ARM template.
      attr_accessor :publisher

      # @return [String] The URI to the icon of the ARM template.
      attr_accessor :icon

      # @return The contents of the ARM template.
      attr_accessor :contents

      # @return [DateTime] The creation date of the armTemplate.
      attr_accessor :created_date

      # @return [Array<ParametersValueFileInfo>] File name and parameter values
      # information from all azuredeploy.*.parameters.json for the ARM
      # template.
      attr_accessor :parameters_value_files_info


      #
      # Mapper for ArmTemplate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ArmTemplate',
          type: {
            name: 'Composite',
            class_name: 'ArmTemplate',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              icon: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.icon',
                type: {
                  name: 'String'
                }
              },
              contents: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.contents',
                type: {
                  name: 'Object'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              parameters_value_files_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.parametersValueFilesInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParametersValueFileInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParametersValueFileInfo'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
