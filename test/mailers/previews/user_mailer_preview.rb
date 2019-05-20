# Preview all emails at http://localhost:https://4c0c3ad72dc14d3b9698db48316fd65d.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:https://4c0c3ad72dc14d3b9698db48316fd65d.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://localhost:https://4c0c3ad72dc14d3b9698db48316fd65d.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end
