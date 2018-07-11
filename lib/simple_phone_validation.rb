require 'simple_phone_validation/railtie'
require 'simple_phone_validation/phone_validator'

I18n.load_path += Dir.glob( File.dirname(__FILE__) + "config/locales/*.{rb,yml}" )

module SimplePhoneValidation
  # class Engine < Rails::Engine
  # end
  # Your code goes here...
end
