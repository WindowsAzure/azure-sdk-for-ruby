# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_03_01
  module Models
    #
    # Describes the connection monitor endpoint filter.
    #
    class ConnectionMonitorEndpointFilter

      include MsRestAzure

      # @return [ConnectionMonitorEndpointFilterType] The behavior of the
      # endpoint filter. Currently only 'Include' is supported. Possible values
      # include: 'Include'
      attr_accessor :type

      # @return [Array<ConnectionMonitorEndpointFilterItem>] List of items in
      # the filter.
      attr_accessor :items


      #
      # Mapper for ConnectionMonitorEndpointFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorEndpointFilter',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorEndpointFilter',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorEndpointFilterItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorEndpointFilterItem'
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
