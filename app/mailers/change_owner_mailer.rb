class ChangeOwnerMailer < ApplicationMailer
  def change_owner(user_email) # メソッド名とviewファイルの名前が一致してないとmissing templateがでる
    mail to: user_email, subject: I18n.t('views.messages.change_owner')
  end
end
