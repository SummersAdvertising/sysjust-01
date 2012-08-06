# -*- encoding : utf-8 -*-
class ExperienceMailer < ActionMailer::Base
  default from: ServiceEmail.first.email

  def notify_email(experience)
    @experience = experience    
    @url  = Setting.domain + new_user_session_path
    mail(:to => ServiceEmail.first.email, :subject => "有人報名體驗課程了")
  end
end
