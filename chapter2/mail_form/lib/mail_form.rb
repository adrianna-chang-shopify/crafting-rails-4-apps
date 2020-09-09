require "mail_form/railtie"

module MailForm
  # autload allows us to lzaily load a constant when it is first referenced
  #  frequently used in Ruby gems and in Rails itself for a fast booting process
  autoload :Base, "mail_form/base"
  autoload :Notifier, "mail_form/notifier"
  autoload :Validators, "mail_form/validators"
end
