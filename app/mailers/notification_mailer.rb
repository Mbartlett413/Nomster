class NotificationMailer < ApplicationMailer
  default from: "no_reply@Speakless.com"


  def comment_added
      mail(to: "masesb13@gmail.com",
        subject: "A comment has been added to your place!")
  end
end