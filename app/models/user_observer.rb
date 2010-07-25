class UserObserver < ActiveRecord::Observer
  observe User
  
  def after_create(user)
    puts "\n"*10 + "HEY-"*5 + "\n"*10
    UserMailer.deliver_signup_notification(user)
  end

  def after_save(user)  
    puts "\n"*10 + "YO-"*5 + "\n"*10
    UserMailer.deliver_activation(user) if user.recently_activated?
  end
end
