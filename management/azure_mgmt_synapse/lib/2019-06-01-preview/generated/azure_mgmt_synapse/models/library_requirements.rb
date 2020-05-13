# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Spark pool library version requirements

    # Library requirements for a Big Data pool powered by Apache Spark
    #
    class LibraryRequirements

      include MsRestAzure

      # @return [DateTime] The last update time of the library requirements
      # file.
      attr_accessor :time

      # @return [String] The library requirements.
      attr_accessor :content

      # @return [String] The filename of the library requirements file.
      attr_accessor :filename


      #
      # Mapper for LibraryRequirements class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LibraryRequirements',
          type: {
            name: 'Composite',
            class_name: 'LibraryRequirements',
            model_properties: {
              time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'time',
                type: {
                  name: 'DateTime'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content',
                type: {
                  name: 'String'
                }
              },
              filename: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filename',
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
