# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_01_01
  module Models
    #
    # Job details.
    #
    class JobDetails

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["DataBoxDisk"] = "DataBoxDiskJobDetails"
      @@discriminatorMap["DataBoxHeavy"] = "DataBoxHeavyJobDetails"
      @@discriminatorMap["DataBox"] = "DataBoxJobDetails"

      def initialize
        @jobDetailsType = "JobDetails"
      end

      attr_accessor :jobDetailsType

      # @return [Integer] The expected size of the data, which needs to be
      # transfered in this job, in tera bytes.
      attr_accessor :expected_data_size_in_tera_bytes

      # @return [Array<JobStages>] List of stages that run in the job.
      attr_accessor :job_stages

      # @return [ContactDetails] Contact details for notification and shipping.
      attr_accessor :contact_details

      # @return [ShippingAddress] Shipping address of the customer.
      attr_accessor :shipping_address

      # @return [PackageShippingDetails] Delivery package shipping details.
      attr_accessor :delivery_package

      # @return [PackageShippingDetails] Return package shipping details.
      attr_accessor :return_package

      # @return [Array<DestinationAccountDetails>] Destination account details.
      attr_accessor :destination_account_details

      # @return [Array<JobErrorDetails>] Error details for failure. This is
      # optional.
      attr_accessor :error_details

      # @return [Preferences] Preferences for the order.
      attr_accessor :preferences

      # @return [Array<CopyLogDetails>] List of copy log details.
      attr_accessor :copy_log_details

      # @return [String] Shared access key to download the return shipment
      # label
      attr_accessor :reverse_shipment_label_sas_key

      # @return [String] Shared access key to download the chain of custody
      # logs
      attr_accessor :chain_of_custody_sas_key


      #
      # Mapper for JobDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'jobDetailsType',
            uber_parent: 'JobDetails',
            class_name: 'JobDetails',
            model_properties: {
              expected_data_size_in_tera_bytes: {
                required: false,
                serialized_name: 'expectedDataSizeInTeraBytes',
                type: {
                  name: 'Number'
                }
              },
              job_stages: {
                required: false,
                read_only: true,
                serialized_name: 'jobStages',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobStagesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobStages'
                      }
                  }
                }
              },
              contact_details: {
                required: true,
                serialized_name: 'contactDetails',
                type: {
                  name: 'Composite',
                  class_name: 'ContactDetails'
                }
              },
              shipping_address: {
                required: true,
                serialized_name: 'shippingAddress',
                type: {
                  name: 'Composite',
                  class_name: 'ShippingAddress'
                }
              },
              delivery_package: {
                required: false,
                read_only: true,
                serialized_name: 'deliveryPackage',
                type: {
                  name: 'Composite',
                  class_name: 'PackageShippingDetails'
                }
              },
              return_package: {
                required: false,
                read_only: true,
                serialized_name: 'returnPackage',
                type: {
                  name: 'Composite',
                  class_name: 'PackageShippingDetails'
                }
              },
              destination_account_details: {
                required: true,
                serialized_name: 'destinationAccountDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DestinationAccountDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DestinationAccountDetails'
                      }
                  }
                }
              },
              error_details: {
                required: false,
                read_only: true,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobErrorDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobErrorDetails'
                      }
                  }
                }
              },
              preferences: {
                required: false,
                serialized_name: 'preferences',
                type: {
                  name: 'Composite',
                  class_name: 'Preferences'
                }
              },
              copy_log_details: {
                required: false,
                read_only: true,
                serialized_name: 'copyLogDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CopyLogDetailsElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'copyLogDetailsType',
                        uber_parent: 'CopyLogDetails',
                        class_name: 'CopyLogDetails'
                      }
                  }
                }
              },
              reverse_shipment_label_sas_key: {
                required: false,
                read_only: true,
                serialized_name: 'reverseShipmentLabelSasKey',
                type: {
                  name: 'String'
                }
              },
              chain_of_custody_sas_key: {
                required: false,
                read_only: true,
                serialized_name: 'chainOfCustodySasKey',
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