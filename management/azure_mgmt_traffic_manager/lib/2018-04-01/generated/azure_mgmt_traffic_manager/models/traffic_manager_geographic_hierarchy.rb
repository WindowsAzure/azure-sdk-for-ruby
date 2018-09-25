# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Class representing the Geographic hierarchy used with the Geographic
    # traffic routing method.
    #
    class TrafficManagerGeographicHierarchy < ProxyResource

      include MsRestAzure

      # @return [Region] The region at the root of the hierarchy from all the
      # regions in the hierarchy can be retrieved.
      attr_accessor :geographic_hierarchy


      #
      # Mapper for TrafficManagerGeographicHierarchy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TrafficManagerGeographicHierarchy',
          type: {
            name: 'Composite',
            class_name: 'TrafficManagerGeographicHierarchy',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              geographic_hierarchy: {
                required: false,
                serialized_name: 'properties.geographicHierarchy',
                type: {
                  name: 'Composite',
                  class_name: 'Region'
                }
              }
            }
          }
        }
      end
    end
  end
end
