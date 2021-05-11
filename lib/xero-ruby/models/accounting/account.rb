=begin
#Xero Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class Account
    # Customer defined alpha numeric account code e.g 200 or SALES (max length = 10)
    attr_accessor :code
    
    # Name of account (max length = 150)
    attr_accessor :name
    
    # The Xero identifier for an account – specified as a string following  the endpoint name   e.g. /297c2dc5-cc47-4afd-8ec8-74990b8761e9
    attr_accessor :account_id
    

    attr_accessor :type
    
    # For bank accounts only (Account Type BANK)
    attr_accessor :bank_account_number
    
    # Accounts with a status of ACTIVE can be updated to ARCHIVED. See Account Status Codes
    attr_accessor :status
    ACTIVE = "ACTIVE".freeze
    ARCHIVED = "ARCHIVED".freeze
    DELETED = "DELETED".freeze
    
    # Description of the Account. Valid for all types of accounts except bank accounts (max length = 4000)
    attr_accessor :description
    
    # For bank accounts only. See Bank Account types
    attr_accessor :bank_account_type
    BANK = "BANK".freeze
    CREDITCARD = "CREDITCARD".freeze
    PAYPAL = "PAYPAL".freeze
    NONE = "NONE".freeze
    EMPTY = "".freeze
    

    attr_accessor :currency_code
    
    # The tax type from TaxRates
    attr_accessor :tax_type
    
    # Boolean – describes whether account can have payments applied to it
    attr_accessor :enable_payments_to_account
    
    # Boolean – describes whether account code is available for use with expense claims
    attr_accessor :show_in_expense_claims
    
    # See Account Class Types
    attr_accessor :_class
    ASSET = "ASSET".freeze
    EQUITY = "EQUITY".freeze
    EXPENSE = "EXPENSE".freeze
    LIABILITY = "LIABILITY".freeze
    REVENUE = "REVENUE".freeze
    
    # If this is a system account then this element is returned. See System Account types. Note that non-system accounts may have this element set as either “” or null.
    attr_accessor :system_account
    DEBTORS = "DEBTORS".freeze
    CREDITORS = "CREDITORS".freeze
    BANKCURRENCYGAIN = "BANKCURRENCYGAIN".freeze
    GST = "GST".freeze
    GSTONIMPORTS = "GSTONIMPORTS".freeze
    HISTORICAL = "HISTORICAL".freeze
    REALISEDCURRENCYGAIN = "REALISEDCURRENCYGAIN".freeze
    RETAINEDEARNINGS = "RETAINEDEARNINGS".freeze
    ROUNDING = "ROUNDING".freeze
    TRACKINGTRANSFERS = "TRACKINGTRANSFERS".freeze
    UNPAIDEXPCLM = "UNPAIDEXPCLM".freeze
    UNREALISEDCURRENCYGAIN = "UNREALISEDCURRENCYGAIN".freeze
    WAGEPAYABLES = "WAGEPAYABLES".freeze
    CISASSETS = "CISASSETS".freeze
    CISASSET = "CISASSET".freeze
    CISLABOUR = "CISLABOUR".freeze
    CISLABOUREXPENSE = "CISLABOUREXPENSE".freeze
    CISLABOURINCOME = "CISLABOURINCOME".freeze
    CISLIABILITY = "CISLIABILITY".freeze
    CISMATERIALS = "CISMATERIALS".freeze
    # EMPTY = "".freeze
    
    # Shown if set
    attr_accessor :reporting_code
    
    # Shown if set
    attr_accessor :reporting_code_name
    
    # boolean to indicate if an account has an attachment (read only)
    attr_accessor :has_attachments
    
    # Last modified date UTC format
    attr_accessor :updated_date_utc
    
    # Boolean – describes whether the account is shown in the watchlist widget on the dashboard
    attr_accessor :add_to_watchlist
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'code' => :'Code',
        :'name' => :'Name',
        :'account_id' => :'AccountID',
        :'type' => :'Type',
        :'bank_account_number' => :'BankAccountNumber',
        :'status' => :'Status',
        :'description' => :'Description',
        :'bank_account_type' => :'BankAccountType',
        :'currency_code' => :'CurrencyCode',
        :'tax_type' => :'TaxType',
        :'enable_payments_to_account' => :'EnablePaymentsToAccount',
        :'show_in_expense_claims' => :'ShowInExpenseClaims',
        :'_class' => :'Class',
        :'system_account' => :'SystemAccount',
        :'reporting_code' => :'ReportingCode',
        :'reporting_code_name' => :'ReportingCodeName',
        :'has_attachments' => :'HasAttachments',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'add_to_watchlist' => :'AddToWatchlist',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'code' => :'String',
        :'name' => :'String',
        :'account_id' => :'String',
        :'type' => :'AccountType',
        :'bank_account_number' => :'String',
        :'status' => :'String',
        :'description' => :'String',
        :'bank_account_type' => :'String',
        :'currency_code' => :'CurrencyCode',
        :'tax_type' => :'String',
        :'enable_payments_to_account' => :'Boolean',
        :'show_in_expense_claims' => :'Boolean',
        :'_class' => :'String',
        :'system_account' => :'String',
        :'reporting_code' => :'String',
        :'reporting_code_name' => :'String',
        :'has_attachments' => :'Boolean',
        :'updated_date_utc' => :'DateTime',
        :'add_to_watchlist' => :'Boolean',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Account` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Account`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'bank_account_number')
        self.bank_account_number = attributes[:'bank_account_number']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'bank_account_type')
        self.bank_account_type = attributes[:'bank_account_type']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'enable_payments_to_account')
        self.enable_payments_to_account = attributes[:'enable_payments_to_account']
      end

      if attributes.key?(:'show_in_expense_claims')
        self.show_in_expense_claims = attributes[:'show_in_expense_claims']
      end

      if attributes.key?(:'_class')
        self._class = attributes[:'_class']
      end

      if attributes.key?(:'system_account')
        self.system_account = attributes[:'system_account']
      end

      if attributes.key?(:'reporting_code')
        self.reporting_code = attributes[:'reporting_code']
      end

      if attributes.key?(:'reporting_code_name')
        self.reporting_code_name = attributes[:'reporting_code_name']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'add_to_watchlist')
        self.add_to_watchlist = attributes[:'add_to_watchlist']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 150
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 150.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 150
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "ARCHIVED", "DELETED"])
      return false unless status_validator.valid?(@status)
      bank_account_type_validator = EnumAttributeValidator.new('String', ["BANK", "CREDITCARD", "PAYPAL", "NONE", ""])
      return false unless bank_account_type_validator.valid?(@bank_account_type)
      _class_validator = EnumAttributeValidator.new('String', ["ASSET", "EQUITY", "EXPENSE", "LIABILITY", "REVENUE"])
      return false unless _class_validator.valid?(@_class)
      system_account_validator = EnumAttributeValidator.new('String', ["DEBTORS", "CREDITORS", "BANKCURRENCYGAIN", "GST", "GSTONIMPORTS", "HISTORICAL", "REALISEDCURRENCYGAIN", "RETAINEDEARNINGS", "ROUNDING", "TRACKINGTRANSFERS", "UNPAIDEXPCLM", "UNREALISEDCURRENCYGAIN", "WAGEPAYABLES", "CISASSETS", "CISASSET", "CISLABOUR", "CISLABOUREXPENSE", "CISLABOURINCOME", "CISLIABILITY", "CISMATERIALS", ""])
      return false unless system_account_validator.valid?(@system_account)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 150
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 150.'
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "ARCHIVED", "DELETED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account_type Object to be assigned
    def bank_account_type=(bank_account_type)
      validator = EnumAttributeValidator.new('String', ["BANK", "CREDITCARD", "PAYPAL", "NONE", ""])
      unless validator.valid?(bank_account_type)
        fail ArgumentError, "invalid value for \"bank_account_type\", must be one of #{validator.allowable_values}."
      end
      @bank_account_type = bank_account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _class Object to be assigned
    def _class=(_class)
      validator = EnumAttributeValidator.new('String', ["ASSET", "EQUITY", "EXPENSE", "LIABILITY", "REVENUE"])
      unless validator.valid?(_class)
        fail ArgumentError, "invalid value for \"_class\", must be one of #{validator.allowable_values}."
      end
      @_class = _class
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] system_account Object to be assigned
    def system_account=(system_account)
      validator = EnumAttributeValidator.new('String', ["DEBTORS", "CREDITORS", "BANKCURRENCYGAIN", "GST", "GSTONIMPORTS", "HISTORICAL", "REALISEDCURRENCYGAIN", "RETAINEDEARNINGS", "ROUNDING", "TRACKINGTRANSFERS", "UNPAIDEXPCLM", "UNREALISEDCURRENCYGAIN", "WAGEPAYABLES", "CISASSETS", "CISASSET", "CISLABOUR", "CISLABOUREXPENSE", "CISLABOURINCOME", "CISLIABILITY", "CISMATERIALS", ""])
      unless validator.valid?(system_account)
        fail ArgumentError, "invalid value for \"system_account\", must be one of #{validator.allowable_values}."
      end
      @system_account = system_account
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          name == o.name &&
          account_id == o.account_id &&
          type == o.type &&
          bank_account_number == o.bank_account_number &&
          status == o.status &&
          description == o.description &&
          bank_account_type == o.bank_account_type &&
          currency_code == o.currency_code &&
          tax_type == o.tax_type &&
          enable_payments_to_account == o.enable_payments_to_account &&
          show_in_expense_claims == o.show_in_expense_claims &&
          _class == o._class &&
          system_account == o.system_account &&
          reporting_code == o.reporting_code &&
          reporting_code_name == o.reporting_code_name &&
          has_attachments == o.has_attachments &&
          updated_date_utc == o.updated_date_utc &&
          add_to_watchlist == o.add_to_watchlist &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [code, name, account_id, type, bank_account_number, status, description, bank_account_type, currency_code, tax_type, enable_payments_to_account, show_in_expense_claims, _class, system_account, reporting_code, reporting_code_name, has_attachments, updated_date_utc, add_to_watchlist, validation_errors].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
