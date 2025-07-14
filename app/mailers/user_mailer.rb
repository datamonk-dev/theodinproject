class UserMailer < ApplicationMailer
  default from: 'DataMonk <rgupta.datamonk@gmail.com>'

  def send_welcome_email_to(user)
    @user = user

    mail(
      subject: 'Getting started with DataMonk learning program',
      to: user.email,
      template_name: 'welcome_email',
    )
  end
end
