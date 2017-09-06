class InvitesMailer < ApplicationMailer
  def invite_to_talk(name, email, domain)
    @domain = domain
    @name = name
    mail(to: email, subject: 'Palestre na XXIV Semana da Tecnologia da Fatec Sorocaba')
  end
end
