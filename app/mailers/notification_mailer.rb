class NotificationMailer < ApplicationMailer
  default from: "no_reply@Speakless.com"


  def comment_added
      mail(to: "Mbartlett413@me.com",
        subject: "A comment has been added to your place!")
  end