# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # Defines the KPI Threshold limits.
    #
    class KpiDefinition

      include MsRestAzure

      include MsRest::JSONable
      # @return [EntityTypes] The mapping entity type. Possible values include:
      # 'None', 'Profile', 'Interaction', 'Relationship'
      attr_accessor :entity_type

      # @return [String] The mapping entity name.
      attr_accessor :entity_type_name

      # @return [String] The hub name.
      attr_accessor :tenant_id

      # @return [String] The KPI name.
      attr_accessor :kpi_name

      # @return [Hash{String => String}] Localized display name for the KPI.
      attr_accessor :display_name

      # @return [Hash{String => String}] Localized description for the KPI.
      attr_accessor :description

      # @return [CalculationWindowTypes] The calculation window. Possible
      # values include: 'Lifetime', 'Hour', 'Day', 'Week', 'Month'
      attr_accessor :calculation_window

      # @return [String] Name of calculation window field.
      attr_accessor :calculation_window_field_name

      # @return [KpiFunctions] The computation function for the KPI. Possible
      # values include: 'Sum', 'Avg', 'Min', 'Max', 'Last', 'Count', 'None',
      # 'CountDistinct'
      attr_accessor :function

      # @return [String] The computation expression for the KPI.
      attr_accessor :expression

      # @return [String] The unit of measurement for the KPI.
      attr_accessor :unit

      # @return [String] The filter expression for the KPI.
      attr_accessor :filter

      # @return [Array<String>] the group by properties for the KPI.
      attr_accessor :group_by

      # @return [Array<KpiGroupByMetadata>] The KPI GroupByMetadata.
      attr_accessor :group_by_metadata

      # @return [Array<KpiParticipantProfilesMetadata>] The participant
      # profiles.
      attr_accessor :participant_profiles_metadata

      # @return [ProvisioningStates] Provisioning state. Possible values
      # include: 'Provisioning', 'Succeeded', 'Expiring', 'Deleting',
      # 'HumanIntervention', 'Failed'
      attr_accessor :provisioning_state

      # @return [KpiThresholds] The KPI thresholds.
      attr_accessor :thres_holds

      # @return [Array<KpiAlias>] The aliases.
      attr_accessor :aliases

      # @return [Array<KpiExtract>] The KPI extracts.
      attr_accessor :extracts


      #
      # Mapper for KpiDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KpiDefinition',
          type: {
            name: 'Composite',
            class_name: 'KpiDefinition',
            model_properties: {
              entity_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entityType',
                type: {
                  name: 'Enum',
                  module: 'EntityTypes'
                }
              },
              entity_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entityTypeName',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              kpi_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kpiName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
              calculation_window: {
                client_side_validation: true,
                required: true,
                serialized_name: 'calculationWindow',
                type: {
                  name: 'Enum',
                  module: 'CalculationWindowTypes'
                }
              },
              calculation_window_field_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'calculationWindowFieldName',
                type: {
                  name: 'String'
                }
              },
              function: {
                client_side_validation: true,
                required: true,
                serialized_name: 'function',
                type: {
                  name: 'Enum',
                  module: 'KpiFunctions'
                }
              },
              expression: {
                client_side_validation: true,
                required: true,
                serialized_name: 'expression',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filter',
                type: {
                  name: 'String'
                }
              },
              group_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupBy',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              group_by_metadata: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'groupByMetadata',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KpiGroupByMetadataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiGroupByMetadata'
                      }
                  }
                }
              },
              participant_profiles_metadata: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'participantProfilesMetadata',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KpiParticipantProfilesMetadataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiParticipantProfilesMetadata'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              thres_holds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thresHolds',
                type: {
                  name: 'Composite',
                  class_name: 'KpiThresholds'
                }
              },
              aliases: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aliases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KpiAliasElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiAlias'
                      }
                  }
                }
              },
              extracts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extracts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KpiExtractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KpiExtract'
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
