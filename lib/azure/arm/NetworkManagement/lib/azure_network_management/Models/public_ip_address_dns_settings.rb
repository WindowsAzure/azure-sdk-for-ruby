# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # Contains FQDN of the DNS record associated with the public IP address
    #
    class PublicIpAddressDnsSettings
      # @return [String] Gets or sets the Domain name label.The concatenation
      # of the domain name label and the regionalized DNS zone make up the
      # fully qualified domain name associated with the public IP address. If
      # a domain name label is specified, an A DNS record is created for the
      # public IP in the Microsoft Azure DNS system.
      attr_accessor :domain_name_label

      # @return [String] Gets the FQDN, Fully qualified domain name of the A
      # DNS record associated with the public IP. This is the concatenation
      # of the domainNameLabel and the regionalized DNS zone.
      attr_accessor :fqdn

      # @return [String] Gets or Sests the Reverse FQDN. A user-visible, fully
      # qualified domain name that resolves to this public IP address. If the
      # reverseFqdn is specified, then a PTR DNS record is created pointing
      # from the IP address in the in-addr.arpa domain to the reverse FQDN.
      attr_accessor :reverse_fqdn

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.domain_name_label
        output_object['domainNameLabel'] = serialized_property unless serialized_property.nil?

        serialized_property = object.fqdn
        output_object['fqdn'] = serialized_property unless serialized_property.nil?

        serialized_property = object.reverse_fqdn
        output_object['reverseFqdn'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [PublicIpAddressDnsSettings] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = PublicIpAddressDnsSettings.new

        deserialized_property = object['domainNameLabel']
        output_object.domain_name_label = deserialized_property

        deserialized_property = object['fqdn']
        output_object.fqdn = deserialized_property

        deserialized_property = object['reverseFqdn']
        output_object.reverse_fqdn = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
