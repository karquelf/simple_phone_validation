# SimplePhoneValidation
Simple custom validator for phone numbers using a reg exp.

The reg exp used is:
```
/((?:\+|00)[17](?: |\-)?|(?:\+|00)[1-9]\d{0,2}(?: |\-)?|(?:\+|00)1\-\d{3}(?: |\-)?)?(0\d|\([0-9]{3}\)|[1-9]{0,3})(?:((?: |\-)[0-9]{2}){4}|((?:[0-9]{2}){4})|((?: |\-)[0-9]{3}(?: |\-)[0-9]{4})|([0-9]{7}))/
```

It covers:
- as valid numbers
```
0123456789
+33698912549
+33 6 79 91 25 49
+33-6-79-91-25-49
(555)-555-5555
18005551234
1 800 555 1234
+1 800 555-1234
+86 800 555 1234
1-800-555-1234
1 (800) 555-1234
(800) 555-1234
(800)5551234
800-555-1234
```
- as invalid numbers
```
abcdefghij
935 263223 64 949
067 9 91 254 9
```


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
