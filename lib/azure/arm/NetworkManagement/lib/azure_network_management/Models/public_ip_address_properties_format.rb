# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # PublicIpAddress properties
    #
    class PublicIpAddressPropertiesFormat
      # @return Gets or sets PublicIP allocation method (Static/Dynamic).
      # Possible values for this property include: 'Static', 'Dynamic'
      attr_accessor :public_ipallocation_method

      # @return [SubResource] Gets a reference to the network interface IP
      # configurations using this public IP address
      attr_accessor :ip_configuration

      # @return [PublicIpAddressDnsSettings] Gets or sets FQDN of the DNS
      # record associated with the public IP address
      attr_accessor :dns_settings

      # @return [String] Gets the assigned public IP address
      attr_accessor :ip_address

      # @return [Integer] Gets or sets the Idletimeout of the public IP address
      attr_accessor :idle_timeout_in_minutes

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @ip_configuration.validate unless @ip_configuration.nil?
        @dns_settings.validate unless @dns_settings.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.public_ipallocation_method
        output_object['publicIPAllocationMethod'] = serialized_property unless serialized_property.nil?

        serialized_property = object.ip_configuration
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::SubResource.serialize_object(serialized_property)
        end
        output_object['ipConfiguration'] = serialized_property unless serialized_property.nil?

        serialized_property = object.dns_settings
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::PublicIpAddressDnsSettings.serialize_object(serialized_property)
        end
        output_object['dnsSettings'] = serialized_property unless serialized_property.nil?

        serialized_property = object.ip_address
        output_object['ipAddress'] = serialized_property unless serialized_property.nil?

        serialized_property = object.idle_timeout_in_minutes
        output_object['idleTimeoutInMinutes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [PublicIpAddressPropertiesFormat] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = PublicIpAddressPropertiesFormat.new

        deserialized_property = object['publicIPAllocationMethod']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Network::IpAllocationMethod.constants.any? { |e| Azure::ARM::Network::IpAllocationMethod.const_get(e) == deserialized_property })
        output_object.public_ipallocation_method = deserialized_property

        deserialized_property = object['ipConfiguration']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::SubResource.deserialize_object(deserialized_property)
        end
        output_object.ip_configuration = deserialized_property

        deserialized_property = object['dnsSettings']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::PublicIpAddressDnsSettings.deserialize_object(deserialized_property)
        end
        output_object.dns_settings = deserialized_property

        deserialized_property = object['ipAddress']
        output_object.ip_address = deserialized_property

        deserialized_property = object['idleTimeoutInMinutes']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.idle_timeout_in_minutes = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
