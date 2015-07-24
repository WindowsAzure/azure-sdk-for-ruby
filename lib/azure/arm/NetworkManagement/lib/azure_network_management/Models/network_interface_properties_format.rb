# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # NetworkInterface properties.
    #
    class NetworkInterfacePropertiesFormat
      # @return [SubResource] Gets or sets the reference of a VirtualMachine
      attr_accessor :virtual_machine

      # @return [SubResource] Gets or sets the reference of the
      # NetworkSecurityGroup resource
      attr_accessor :network_security_group

      # @return [Array<NetworkInterfaceIpConfiguration>] Gets or sets list of
      # IPConfigurations of the NetworkInterface
      attr_accessor :ip_configurations

      # @return [NetworkInterfaceDnsSettings] Gets or sets DNS Settings in
      # NetworkInterface
      attr_accessor :dns_settings

      # @return [String] Gets the MAC Address of the network interface
      attr_accessor :mac_address

      # @return [Boolean] Gets whether this is a primary NIC on a virtual
      # machine
      attr_accessor :primary

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      def initialize
        @ip_configurations = [];
      end

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @virtual_machine.validate unless @virtual_machine.nil?
        @network_security_group.validate unless @network_security_group.nil?
        @ip_configurations.each{ |e| e.validate if e.respond_to?(:validate) } unless @ip_configurations.nil?
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

        serialized_property = object.virtual_machine
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::SubResource.serialize_object(serialized_property)
        end
        output_object['virtualMachine'] = serialized_property unless serialized_property.nil?

        serialized_property = object.network_security_group
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::SubResource.serialize_object(serialized_property)
        end
        output_object['networkSecurityGroup'] = serialized_property unless serialized_property.nil?

        serialized_property = object.ip_configurations
        if (serialized_property)
          serializedArray = [];
          serialized_property.each do |element|
            if (element)
              element = Azure::ARM::Network::Models::NetworkInterfaceIpConfiguration.serialize_object(element)
            end
            serializedArray.push(element);
          end
          serialized_property = serializedArray;
        end
        output_object['ipConfigurations'] = serialized_property unless serialized_property.nil?

        serialized_property = object.dns_settings
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::NetworkInterfaceDnsSettings.serialize_object(serialized_property)
        end
        output_object['dnsSettings'] = serialized_property unless serialized_property.nil?

        serialized_property = object.mac_address
        output_object['macAddress'] = serialized_property unless serialized_property.nil?

        serialized_property = object.primary
        output_object['primary'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NetworkInterfacePropertiesFormat] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = NetworkInterfacePropertiesFormat.new

        deserialized_property = object['virtualMachine']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::SubResource.deserialize_object(deserialized_property)
        end
        output_object.virtual_machine = deserialized_property

        deserialized_property = object['networkSecurityGroup']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::SubResource.deserialize_object(deserialized_property)
        end
        output_object.network_security_group = deserialized_property

        deserialized_property = object['ipConfigurations']
        if (deserialized_property)
          deserializedArray = [];
          deserialized_property.each do |element1|
            if (element1)
              element1 = Azure::ARM::Network::Models::NetworkInterfaceIpConfiguration.deserialize_object(element1)
            end
            deserializedArray.push(element1);
          end
          deserialized_property = deserializedArray;
        end
        output_object.ip_configurations = deserialized_property

        deserialized_property = object['dnsSettings']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::NetworkInterfaceDnsSettings.deserialize_object(deserialized_property)
        end
        output_object.dns_settings = deserialized_property

        deserialized_property = object['macAddress']
        output_object.mac_address = deserialized_property

        deserialized_property = object['primary']
        output_object.primary = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
