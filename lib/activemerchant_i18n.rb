module ActivemerchantI18n
end

path = File.dirname(__FILE__)
I18n.load_path += Dir[ File.join(path, '../config/locales', '*.{rb,yml}') ]

module ActiveMerchant #:nodoc:
  module Validateable #:nodoc:

    def valid_with_i18n?
      valid_without_i18n?
      result = Errors.new(self)
      errors.each do |k, errors_array|
        errors_array.each do |error_string|
          result.add(k, I18n.translate(error_string.parameterize.underscore, scope: 'activemerchant'))
        end
      end
      @errors = result
      return errors.empty?
    end

    alias_method_chain :valid?, :i18n

  end
end
