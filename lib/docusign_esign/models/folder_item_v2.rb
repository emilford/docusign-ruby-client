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
  class FolderItemV2
    # Specifies the date and time this item was completed.
    attr_accessor :completed_date_time

    # Indicates the date and time the item was created.
    attr_accessor :created_date_time

    # The envelope ID of the envelope status that failed to post.
    attr_accessor :envelope_id

    # Contains a URI for an endpoint that you can use to retrieve the envelope or envelopes.
    attr_accessor :envelope_uri

    # The date and time the envelope is set to expire.
    attr_accessor :expire_date_time

    # 
    attr_accessor :folder_id

    # 
    attr_accessor :folder_uri

    # When set to **true**, indicates that this module is enabled on the account.
    attr_accessor :is21_cfr_part11

    # 
    attr_accessor :owner_name

    attr_accessor :recipients

    # Contains a URI for an endpoint that you can use to retrieve the recipients.
    attr_accessor :recipients_uri

    # 
    attr_accessor :sender_company

    # 
    attr_accessor :sender_email

    # 
    attr_accessor :sender_name

    # 
    attr_accessor :sender_user_id

    # The date and time the envelope was sent.
    attr_accessor :sent_date_time

    # Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later.
    attr_accessor :status

    # 
    attr_accessor :subject

    # The unique identifier of the template. If this is not provided, DocuSign will generate a value. 
    attr_accessor :template_id

    # 
    attr_accessor :template_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'completed_date_time' => :'completedDateTime',
        :'created_date_time' => :'createdDateTime',
        :'envelope_id' => :'envelopeId',
        :'envelope_uri' => :'envelopeUri',
        :'expire_date_time' => :'expireDateTime',
        :'folder_id' => :'folderId',
        :'folder_uri' => :'folderUri',
        :'is21_cfr_part11' => :'is21CFRPart11',
        :'owner_name' => :'ownerName',
        :'recipients' => :'recipients',
        :'recipients_uri' => :'recipientsUri',
        :'sender_company' => :'senderCompany',
        :'sender_email' => :'senderEmail',
        :'sender_name' => :'senderName',
        :'sender_user_id' => :'senderUserId',
        :'sent_date_time' => :'sentDateTime',
        :'status' => :'status',
        :'subject' => :'subject',
        :'template_id' => :'templateId',
        :'template_uri' => :'templateUri'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'completed_date_time' => :'String',
        :'created_date_time' => :'String',
        :'envelope_id' => :'String',
        :'envelope_uri' => :'String',
        :'expire_date_time' => :'String',
        :'folder_id' => :'String',
        :'folder_uri' => :'String',
        :'is21_cfr_part11' => :'String',
        :'owner_name' => :'String',
        :'recipients' => :'Recipients',
        :'recipients_uri' => :'String',
        :'sender_company' => :'String',
        :'sender_email' => :'String',
        :'sender_name' => :'String',
        :'sender_user_id' => :'String',
        :'sent_date_time' => :'String',
        :'status' => :'String',
        :'subject' => :'String',
        :'template_id' => :'String',
        :'template_uri' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'completedDateTime')
        self.completed_date_time = attributes[:'completedDateTime']
      end

      if attributes.has_key?(:'createdDateTime')
        self.created_date_time = attributes[:'createdDateTime']
      end

      if attributes.has_key?(:'envelopeId')
        self.envelope_id = attributes[:'envelopeId']
      end

      if attributes.has_key?(:'envelopeUri')
        self.envelope_uri = attributes[:'envelopeUri']
      end

      if attributes.has_key?(:'expireDateTime')
        self.expire_date_time = attributes[:'expireDateTime']
      end

      if attributes.has_key?(:'folderId')
        self.folder_id = attributes[:'folderId']
      end

      if attributes.has_key?(:'folderUri')
        self.folder_uri = attributes[:'folderUri']
      end

      if attributes.has_key?(:'is21CFRPart11')
        self.is21_cfr_part11 = attributes[:'is21CFRPart11']
      end

      if attributes.has_key?(:'ownerName')
        self.owner_name = attributes[:'ownerName']
      end

      if attributes.has_key?(:'recipients')
        self.recipients = attributes[:'recipients']
      end

      if attributes.has_key?(:'recipientsUri')
        self.recipients_uri = attributes[:'recipientsUri']
      end

      if attributes.has_key?(:'senderCompany')
        self.sender_company = attributes[:'senderCompany']
      end

      if attributes.has_key?(:'senderEmail')
        self.sender_email = attributes[:'senderEmail']
      end

      if attributes.has_key?(:'senderName')
        self.sender_name = attributes[:'senderName']
      end

      if attributes.has_key?(:'senderUserId')
        self.sender_user_id = attributes[:'senderUserId']
      end

      if attributes.has_key?(:'sentDateTime')
        self.sent_date_time = attributes[:'sentDateTime']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'templateId')
        self.template_id = attributes[:'templateId']
      end

      if attributes.has_key?(:'templateUri')
        self.template_uri = attributes[:'templateUri']
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
          completed_date_time == o.completed_date_time &&
          created_date_time == o.created_date_time &&
          envelope_id == o.envelope_id &&
          envelope_uri == o.envelope_uri &&
          expire_date_time == o.expire_date_time &&
          folder_id == o.folder_id &&
          folder_uri == o.folder_uri &&
          is21_cfr_part11 == o.is21_cfr_part11 &&
          owner_name == o.owner_name &&
          recipients == o.recipients &&
          recipients_uri == o.recipients_uri &&
          sender_company == o.sender_company &&
          sender_email == o.sender_email &&
          sender_name == o.sender_name &&
          sender_user_id == o.sender_user_id &&
          sent_date_time == o.sent_date_time &&
          status == o.status &&
          subject == o.subject &&
          template_id == o.template_id &&
          template_uri == o.template_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [completed_date_time, created_date_time, envelope_id, envelope_uri, expire_date_time, folder_id, folder_uri, is21_cfr_part11, owner_name, recipients, recipients_uri, sender_company, sender_email, sender_name, sender_user_id, sent_date_time, status, subject, template_id, template_uri].hash
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
