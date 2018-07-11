class PhoneValidator < ActiveModel::EachValidator

  PHONE_REG_EXP = /((?:\+|00)[17](?: |\-)?|(?:\+|00)[1-9]\d{0,2}(?: |\-)?|(?:\+|00)1\-\d{3}(?: |\-)?)?(0\d|\([0-9]{3}\)|[1-9]{0,3})(?:((?: |\-)[0-9]{2}){4}|((?:[0-9]{2}){4})|((?: |\-)[0-9]{3}(?: |\-)[0-9]{4})|([0-9]{7}))/

  def validate_each(record, attribute, value)
    return if options[:allow_blank] && value.blank?

    unless value =~ PHONE_REG_EXP
      record.errors[attribute] << (options[:message] || I18n.t('global.errors.phone_format'))
    end
  end
end
