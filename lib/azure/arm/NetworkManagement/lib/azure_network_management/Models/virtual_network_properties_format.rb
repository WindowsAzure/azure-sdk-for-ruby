# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # Model object.
    #
    class VirtualNetworkPropertiesFormat
      # @return [AddressSpace] Gets or sets AddressSpace that contains an
      # array of IP address ranges that can be used by subnets
      attr_accessor :address_space

      # @return [DhcpOptions] Gets or sets DHCPOptions that contains an array
      # of DNS servers available to VMs deployed in the virtual network
      attr_accessor :dhcp_options

      # @return [Array<Subnet>] Gets or sets List of subnets in a
      # VirtualNetwork
      attr_accessor :subnets

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      def initialize
        @subnets = [];
      end

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @address_space.validate unless @address_space.nil?
        @dhcp_options.validate unless @dhcp_options.nil?
        @subnets.each{ |e| e.validate if e.respond_to?(:validate) } unless @subnets.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.address_space
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::AddressSpace.serialize_object(serialized_property)
        end
        output_object['addressSpace'] = serialized_property unless serialized_property.nil?

        serialized_property = object.dhcp_options
        if (serialized_property)
          serialized_property = Azure::ARM::Network::Models::DhcpOptions.serialize_object(serialized_property)
        end
        output_object['dhcpOptions'] = serialized_property unless serialized_property.nil?

        serialized_property = object.subnets
        if (serialized_property)
          serializedArray = [];
          serialized_property.each do |element|
            if (element)
              element = Azure::ARM::Network::Models::Subnet.serialize_object(element)
            end
            serializedArray.push(element);
          end
          serialized_property = serializedArray;
        end
        output_object['subnets'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualNetworkPropertiesFormat] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualNetworkPropertiesFormat.new

        deserialized_property = object['addressSpace']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::AddressSpace.deserialize_object(deserialized_property)
        end
        output_object.address_space = deserialized_property

        deserialized_property = object['dhcpOptions']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Network::Models::DhcpOptions.deserialize_object(deserialized_property)
        end
        output_object.dhcp_options = deserialized_property

        deserialized_property = object['subnets']
        if (deserialized_property)
          deserializedArray = [];
          deserialized_property.each do |element1|
            if (element1)
              element1 = Azure::ARM::Network::Models::Subnet.deserialize_object(element1)
            end
            deserializedArray.push(element1);
          end
          deserialized_property = deserializedArray;
        end
        output_object.subnets = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
