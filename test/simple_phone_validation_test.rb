require 'test_helper'

class SimplePhoneValidation::Test < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, SimplePhoneValidation
  end

  test 'invalid phone numbers' do
    obj = PhoneValidatable.new
    valid_phone_numbers = [
      'abcdefghij',
      '935 263223 64 949',
      '067 9 91 254 9'
    ]
    valid_phone_numbers.each do |phone|
      obj.phone = phone
      assert_not(obj.valid?, "\"#{phone}\" should not be valid")
    end
  end

  test 'valid phone numbers' do
    obj = PhoneValidatable.new
    valid_phone_numbers = [
      '0123456789',
      '+33698912549',
      '+33 6 79 91 25 49',
      '+33-6-79-91-25-49',
      '(555)-555-5555',
      '18005551234',
      '1 800 555 1234',
      '+1 800 555-1234',
      '+86 800 555 1234',
      '1-800-555-1234',
      '1 (800) 555-1234',
      '(800) 555-1234',
      '(800)5551234',
      '800-555-1234',
      '800 555 1234x5678',
      '1    800    555-1234',
      '1----800----555-1234'
    ]
    valid_phone_numbers.each do |phone|
      obj.phone = phone
      assert(obj.valid?, "\"#{phone}\" should be valid")
    end
  end
end
