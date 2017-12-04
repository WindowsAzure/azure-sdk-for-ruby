# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Additional XML formatted information that can be included in the
    # Unattend.xml file, which is used by Windows Setup. Contents are defined
    # by setting name, component name, and the pass in which the content is a
    # applied.
    #
    class AdditionalUnattendContent

      include MsRestAzure

      # @return [PassNames] The pass name. Currently, the only allowable value
      # is oobeSystem. Possible values include: 'oobeSystem'
      attr_accessor :pass_name

      # @return [ComponentNames] The component name. Currently, the only
      # allowable value is Microsoft-Windows-Shell-Setup. Possible values
      # include: 'Microsoft-Windows-Shell-Setup'
      attr_accessor :component_name

      # @return [SettingNames] Setting name (e.g. FirstLogonCommands, AutoLogon
      # ). Possible values include: 'AutoLogon', 'FirstLogonCommands'
      attr_accessor :setting_name

      # @return [String] XML formatted content that is added to the
      # unattend.xml file in the specified pass and component. The XML must be
      # less than 4 KB and must include the root element for the setting or
      # feature that is being inserted.
      attr_accessor :content


      #
      # Mapper for AdditionalUnattendContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdditionalUnattendContent',
          type: {
            name: 'Composite',
            class_name: 'AdditionalUnattendContent',
            model_properties: {
              pass_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passName',
                type: {
                  name: 'Enum',
                  module: 'PassNames'
                }
              },
              component_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'componentName',
                type: {
                  name: 'Enum',
                  module: 'ComponentNames'
                }
              },
              setting_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'settingName',
                type: {
                  name: 'Enum',
                  module: 'SettingNames'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content',
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
