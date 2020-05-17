=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13-SNAPSHOT

=end

require 'date'

module DocuSign_eSign
  # A complex element that contains input information related to a recipient ID check. It can include the following information.  addressInformationInput: Used to set recipient address information and consists of:  * addressInformation: consists of six elements, with stree2 and zipPlus4 being optional. The elements are: street1, street2, city, state, zip, zipPlus4. The maximum length of each element is: street1/street2 = 150 characters, city = 50 characters, state = 2 characters, and zip/zipPlus4 = 20 characters. * displayLevelCode: Specifies the display level for the recipient. Values are: ReadOnly, Editable, or DoNotDisplay. * receiveInResponse: A Boolean element that specifies if the information needs to be returned in the response.  dobInformationInput: Used to set recipient date of birth information and consists of:  * dateOfBirth: Specifies the recipient's date, month and year of birth. * displayLevelCode: Specifies the display level for the recipient. Values are: ReadOnly, Editable, or DoNotDisplay. * receiveInResponse: A Boolean element that specifies if the information needs to be returned in the response.  ssn4InformationInput: Used to set the last four digits of the recipient's SSN information and consists of:  * ssn4: Specifies the last four digits of the recipient's SSN. * displayLevelCode: Specifies the display level for the recipient. Values are: ReadOnly, Editable, or DoNotDisplay. * receiveInResponse: A Boolean element that specifies if the information needs to be returned in the response.  ssn9InformationInput: Used to set the recipient's SSN information. Note that the ssn9 information can never be returned in the response. The ssn9 input consists of:  * ssn9: Specifies the recipient's SSN. * displayLevelCode: Specifies the display level for the recipient. Values are: ReadOnly, Editable, or DoNotDisplay.
  class IdCheckInformationInput
    attr_accessor :address_information_input

    attr_accessor :dob_information_input

    attr_accessor :ssn4_information_input

    attr_accessor :ssn9_information_input

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address_information_input' => :'addressInformationInput',
        :'dob_information_input' => :'dobInformationInput',
        :'ssn4_information_input' => :'ssn4InformationInput',
        :'ssn9_information_input' => :'ssn9InformationInput'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address_information_input' => :'AddressInformationInput',
        :'dob_information_input' => :'DobInformationInput',
        :'ssn4_information_input' => :'Ssn4InformationInput',
        :'ssn9_information_input' => :'Ssn9InformationInput'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'addressInformationInput')
        self.address_information_input = attributes[:'addressInformationInput']
      end

      if attributes.has_key?(:'dobInformationInput')
        self.dob_information_input = attributes[:'dobInformationInput']
      end

      if attributes.has_key?(:'ssn4InformationInput')
        self.ssn4_information_input = attributes[:'ssn4InformationInput']
      end

      if attributes.has_key?(:'ssn9InformationInput')
        self.ssn9_information_input = attributes[:'ssn9InformationInput']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_information_input == o.address_information_input &&
          dob_information_input == o.dob_information_input &&
          ssn4_information_input == o.ssn4_information_input &&
          ssn9_information_input == o.ssn9_information_input
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address_information_input, dob_information_input, ssn4_information_input, ssn9_information_input].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
