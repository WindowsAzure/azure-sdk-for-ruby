# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # LoadBalancer resource
    #
    class LoadBalancer < MsRestAzure::Resource
      # @return [LoadBalancerPropertiesFormat]
      attr_accessor :properties

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @properties.validate unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.location
        output_object['location'] = serialized_property unless serialized_property.nil?

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tags
        output_object['tags'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::LoadBalancerPropertiesFormat.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        serialized_property = object.etag
        output_object['etag'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [LoadBalancer] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = LoadBalancer.new

        deserialized_property = object['location']
        output_object.location = deserialized_property

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['type']
        output_object.type = deserialized_property

        deserialized_property = object['tags']
        output_object.tags = deserialized_property

        deserialized_property = object['properties']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::LoadBalancerPropertiesFormat.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        deserialized_property = object['etag']
        output_object.etag = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
