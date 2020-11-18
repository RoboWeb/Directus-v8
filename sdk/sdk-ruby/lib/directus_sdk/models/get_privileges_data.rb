=begin
#directus.io

#API for directus.io

OpenAPI spec version: 1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require 'date'

module DirectusSDK

  class GetPrivilegesData
    attr_accessor :id

    attr_accessor :table_name

    attr_accessor :group_id

    attr_accessor :read_field_blacklist

    attr_accessor :write_field_blacklist

    attr_accessor :nav_listed

    attr_accessor :status_id

    attr_accessor :allow_view

    attr_accessor :allow_add

    attr_accessor :allow_edit

    attr_accessor :allow_delete

    attr_accessor :allow_alter


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'table_name' => :'table_name',
        :'group_id' => :'group_id',
        :'read_field_blacklist' => :'read_field_blacklist',
        :'write_field_blacklist' => :'write_field_blacklist',
        :'nav_listed' => :'nav_listed',
        :'status_id' => :'status_id',
        :'allow_view' => :'allow_view',
        :'allow_add' => :'allow_add',
        :'allow_edit' => :'allow_edit',
        :'allow_delete' => :'allow_delete',
        :'allow_alter' => :'allow_alter'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'table_name' => :'String',
        :'group_id' => :'Integer',
        :'read_field_blacklist' => :'String',
        :'write_field_blacklist' => :'String',
        :'nav_listed' => :'Integer',
        :'status_id' => :'Integer',
        :'allow_view' => :'Integer',
        :'allow_add' => :'Integer',
        :'allow_edit' => :'Integer',
        :'allow_delete' => :'Integer',
        :'allow_alter' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'table_name')
        self.table_name = attributes[:'table_name']
      end

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.has_key?(:'read_field_blacklist')
        self.read_field_blacklist = attributes[:'read_field_blacklist']
      end

      if attributes.has_key?(:'write_field_blacklist')
        self.write_field_blacklist = attributes[:'write_field_blacklist']
      end

      if attributes.has_key?(:'nav_listed')
        self.nav_listed = attributes[:'nav_listed']
      end

      if attributes.has_key?(:'status_id')
        self.status_id = attributes[:'status_id']
      end

      if attributes.has_key?(:'allow_view')
        self.allow_view = attributes[:'allow_view']
      end

      if attributes.has_key?(:'allow_add')
        self.allow_add = attributes[:'allow_add']
      end

      if attributes.has_key?(:'allow_edit')
        self.allow_edit = attributes[:'allow_edit']
      end

      if attributes.has_key?(:'allow_delete')
        self.allow_delete = attributes[:'allow_delete']
      end

      if attributes.has_key?(:'allow_alter')
        self.allow_alter = attributes[:'allow_alter']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          table_name == o.table_name &&
          group_id == o.group_id &&
          read_field_blacklist == o.read_field_blacklist &&
          write_field_blacklist == o.write_field_blacklist &&
          nav_listed == o.nav_listed &&
          status_id == o.status_id &&
          allow_view == o.allow_view &&
          allow_add == o.allow_add &&
          allow_edit == o.allow_edit &&
          allow_delete == o.allow_delete &&
          allow_alter == o.allow_alter
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, table_name, group_id, read_field_blacklist, write_field_blacklist, nav_listed, status_id, allow_view, allow_add, allow_edit, allow_delete, allow_alter].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = DirectusSDK.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
