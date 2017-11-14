# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Represents whether or not an app is cloneable.
    #
    class SiteCloneability

      include MsRestAzure

      include MsRest::JSONable
      # @return [CloneAbilityResult] Name of app. Possible values include:
      # 'Cloneable', 'PartiallyCloneable', 'NotCloneable'
      attr_accessor :result

      # @return [Array<SiteCloneabilityCriterion>] List of features enabled on
      # app that prevent cloning.
      attr_accessor :blocking_features

      # @return [Array<SiteCloneabilityCriterion>] List of features enabled on
      # app that are non-blocking but cannot be cloned. The app can still be
      # cloned
      # but the features in this list will not be set up on cloned app.
      attr_accessor :unsupported_features

      # @return [Array<SiteCloneabilityCriterion>] List of blocking application
      # characteristics.
      attr_accessor :blocking_characteristics


      #
      # Mapper for SiteCloneability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteCloneability',
          type: {
            name: 'Composite',
            class_name: 'SiteCloneability',
            model_properties: {
              result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'result',
                type: {
                  name: 'Enum',
                  module: 'CloneAbilityResult'
                }
              },
              blocking_features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blockingFeatures',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SiteCloneabilityCriterionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SiteCloneabilityCriterion'
                      }
                  }
                }
              },
              unsupported_features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unsupportedFeatures',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SiteCloneabilityCriterionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SiteCloneabilityCriterion'
                      }
                  }
                }
              },
              blocking_characteristics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blockingCharacteristics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SiteCloneabilityCriterionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SiteCloneabilityCriterion'
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
