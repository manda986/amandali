class ContactMailer < ActionMailer::Base
  default from: 'amanda.j.li@gmail.com'

  def contact_email(params)
    @email = params[:email]
    @msg = params[:message]

    mail(:to => 'amanda.j.li@gmail.com',
         :from => @email,
         :subject => 'Question from www.amanda.li')
  end
end