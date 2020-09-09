module MailForm
  class Base
    include ActiveModel::AttributeMethods
    include ActiveModel::Conversion
    include ActiveModel::Validations
    extend ActiveModel::Naming
    extend ActiveModel::Translation

    attribute_method_prefix 'clear_'
    attribute_method_suffix '?'

    # This will store a list of all attribute names for a given MailForm
    class_attribute :attribute_names
    self.attribute_names = []
    
    def initialize(attributes = {})
      attributes.each do |attr, value|
        self.public_send("#{attr}=", value)
      end if attributes
    end

    def self.attributes(*names)
      attr_accessor(*names)
      define_attribute_methods(names)

      # Add new names to our attribute_names array as they are definred
      self.attribute_names += names
    end

    # An object is persisted if it's neither a new record, nor destroyed
    # Since we're not saving objects to the db, #persisted? should always return false
    def persisted?
      false
    end

    def deliver
      if valid?
        MailForm::Notifier.contact(self).deliver
      else
        false
      end
    end

    protected

    def clear_attribute(attribute)
      send("#{attribute}=", nil)
    end

    def attribute?(attribute)
      send(attribute).present?
    end
  end
end