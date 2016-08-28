# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class X12EnvelopeSettings

      include MsRestAzure

      # @return [Integer] The controls standards id.
      attr_accessor :control_standards_id

      # @return [Boolean] The value indicating whether to use control
      # standards id as repetition character.
      attr_accessor :use_control_standards_id_as_repetition_character

      # @return [String] The sender application id.
      attr_accessor :sender_application_id

      # @return [String] The receiver application id.
      attr_accessor :receiver_application_id

      # @return [String] The control version number.
      attr_accessor :control_version_number

      # @return [Integer] The interchange  control number lower bound.
      attr_accessor :interchange_control_number_lower_bound

      # @return [Integer] The interchange  control number upper bound.
      attr_accessor :interchange_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover interchange
      # control number.
      attr_accessor :rollover_interchange_control_number

      # @return [Boolean] The value indicating whether to enable default group
      # headers.
      attr_accessor :enable_default_group_headers

      # @return [String] The functional group id.
      attr_accessor :functional_group_id

      # @return [Integer] The group control number lower bound.
      attr_accessor :group_control_number_lower_bound

      # @return [Integer] The group control number upper bound.
      attr_accessor :group_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover group
      # control number.
      attr_accessor :rollover_group_control_number

      # @return [String] The group header agency code.
      attr_accessor :group_header_agency_code

      # @return [String] The group header version.
      attr_accessor :group_header_version

      # @return [Integer] The transaction set control number lower bound.
      attr_accessor :transaction_set_control_number_lower_bound

      # @return [Integer] The transaction set control number upper bound.
      attr_accessor :transaction_set_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover transaction
      # set control number.
      attr_accessor :rollover_transaction_set_control_number

      # @return [String] The transaction set control number prefix.
      attr_accessor :transaction_set_control_number_prefix

      # @return [String] The transaction set control number suffix.
      attr_accessor :transaction_set_control_number_suffix

      # @return [Boolean] The value indicating whether to overwrite existing
      # transaction set control number.
      attr_accessor :overwrite_existing_transaction_set_control_number

      # @return [X12DateFormat] The group header date format. Possible values
      # include: 'NotSpecified', 'CCYYMMDD', 'YYMMDD'
      attr_accessor :group_header_date_format

      # @return [X12TimeFormat] The group header time format. Possible values
      # include: 'NotSpecified', 'HHMM', 'HHMMSS', 'HHMMSSdd', 'HHMMSSd'
      attr_accessor :group_header_time_format

      # @return [UsageIndicator] The usage indicator. Possible values include:
      # 'NotSpecified', 'Test', 'Information', 'Production'
      attr_accessor :usage_indicator


      #
      # Mapper for X12EnvelopeSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12EnvelopeSettings',
          type: {
            name: 'Composite',
            class_name: 'X12EnvelopeSettings',
            model_properties: {
              control_standards_id: {
                required: false,
                serialized_name: 'controlStandardsId',
                type: {
                  name: 'Number'
                }
              },
              use_control_standards_id_as_repetition_character: {
                required: false,
                serialized_name: 'useControlStandardsIdAsRepetitionCharacter',
                type: {
                  name: 'Boolean'
                }
              },
              sender_application_id: {
                required: false,
                serialized_name: 'senderApplicationId',
                type: {
                  name: 'String'
                }
              },
              receiver_application_id: {
                required: false,
                serialized_name: 'receiverApplicationId',
                type: {
                  name: 'String'
                }
              },
              control_version_number: {
                required: false,
                serialized_name: 'controlVersionNumber',
                type: {
                  name: 'String'
                }
              },
              interchange_control_number_lower_bound: {
                required: false,
                serialized_name: 'interchangeControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              interchange_control_number_upper_bound: {
                required: false,
                serialized_name: 'interchangeControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_interchange_control_number: {
                required: false,
                serialized_name: 'rolloverInterchangeControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              enable_default_group_headers: {
                required: false,
                serialized_name: 'enableDefaultGroupHeaders',
                type: {
                  name: 'Boolean'
                }
              },
              functional_group_id: {
                required: false,
                serialized_name: 'functionalGroupId',
                type: {
                  name: 'String'
                }
              },
              group_control_number_lower_bound: {
                required: false,
                serialized_name: 'groupControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              group_control_number_upper_bound: {
                required: false,
                serialized_name: 'groupControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_group_control_number: {
                required: false,
                serialized_name: 'rolloverGroupControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              group_header_agency_code: {
                required: false,
                serialized_name: 'groupHeaderAgencyCode',
                type: {
                  name: 'String'
                }
              },
              group_header_version: {
                required: false,
                serialized_name: 'groupHeaderVersion',
                type: {
                  name: 'String'
                }
              },
              transaction_set_control_number_lower_bound: {
                required: false,
                serialized_name: 'transactionSetControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              transaction_set_control_number_upper_bound: {
                required: false,
                serialized_name: 'transactionSetControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_transaction_set_control_number: {
                required: false,
                serialized_name: 'rolloverTransactionSetControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              transaction_set_control_number_prefix: {
                required: false,
                serialized_name: 'transactionSetControlNumberPrefix',
                type: {
                  name: 'String'
                }
              },
              transaction_set_control_number_suffix: {
                required: false,
                serialized_name: 'transactionSetControlNumberSuffix',
                type: {
                  name: 'String'
                }
              },
              overwrite_existing_transaction_set_control_number: {
                required: false,
                serialized_name: 'overwriteExistingTransactionSetControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              group_header_date_format: {
                required: false,
                serialized_name: 'groupHeaderDateFormat',
                type: {
                  name: 'Enum',
                  module: 'X12DateFormat'
                }
              },
              group_header_time_format: {
                required: false,
                serialized_name: 'groupHeaderTimeFormat',
                type: {
                  name: 'Enum',
                  module: 'X12TimeFormat'
                }
              },
              usage_indicator: {
                required: false,
                serialized_name: 'usageIndicator',
                type: {
                  name: 'Enum',
                  module: 'UsageIndicator'
                }
              }
            }
          }
        }
      end
    end
  end
end
