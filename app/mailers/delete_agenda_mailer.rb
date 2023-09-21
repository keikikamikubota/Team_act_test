class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda(agenda)
    @agenda = agenda
    member_emails = agenda.team.users.pluck(:email)
    mail to: member_emails, subject: I18n.t('views.messages.delete_agenda')
  end
end