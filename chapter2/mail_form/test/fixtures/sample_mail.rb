class SampleMail < MailForm::Base
  attributes :name, :email

  def headers
    { to: "adrianna@example.com", from: self.email }
  end
end