class Signup < ActionMailer::Base
  #default from: 'no-reply@recomendareforco.net'
  default from: 'reforco.mestrado2015@gmail.com'

  def confirm_email(user)
    @user = user
    @confirmation_link = confirmation_url({
      token: @user.confirmation_token
    })

    mail({
      to: user.email,
      #bcc: ['sign ups <signups@recomendareforco.net>'],
      bcc: ['sign ups <reforco.mestrado2015@gmail.com>'],
      
      subject: I18n.t('signup.confirm_email.subject')
    })
  end
end
