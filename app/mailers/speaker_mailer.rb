class SpeakerMailer < ApplicationMailer
  include Rails.application.routes.url_helpers

  def submitted_talk(speaker, domain)
    @speaker_name = speaker.name.split.first
    @edit_link = edit_speaker_url(speaker, host: domain)
    mail(to: speaker.email, subject: 'Obrigado por enviar sua proposta!')
  end
end
