class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :phone, presence: true
  attribute :images
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Contact Form for Missing Person",
      :to => "email.swar@gmail.com",
      :from => %("#{name}" <#{email}>),
      :attachments => %(<#{images}>)

    }
  end
  
end