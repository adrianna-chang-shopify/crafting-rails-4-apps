# Class responsible for creating and delivering emails
module MailForm
  class Notifier < ActionMailer::Base
    # append lib/views as a place to search for view templates
    append_view_path File.expand_path("../../views", __FILE__)

    def contact(mail_form)
      @mail_form = mail_form
      # mail_form.headers returns a hash with email data such as :to, :from, and :subject
      # each child class (of MailForm::Base) should define the values for these methods in
      # a #headers method
      mail(mail_form.headers)
    end
  end
end