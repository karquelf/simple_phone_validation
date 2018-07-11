# SimplePhoneValidation
Simple custom validator for phone numbers using a reg exp.

## Usage
```
validates :my_phone_attribute, phone: true
validates :my_other_phone, phone: true, allow_blank: true
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'simple_phone_validation'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install simple_phone_validation
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
