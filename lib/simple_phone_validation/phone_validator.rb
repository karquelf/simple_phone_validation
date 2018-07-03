class PhoneValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    return if options[:allow_blank] && value.blank?

    unless value =~ /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/
      record.errors[attribute] << (options[:message] || I18n.t('global.errors.phone_format'))
    end
  end
end
