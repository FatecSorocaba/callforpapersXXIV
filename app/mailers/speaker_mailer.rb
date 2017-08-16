class SpeakerMailer < ApplicationMailer
  include Rails.application.routes.url_helpers

  def submitted_talk(speaker)
    @speaker_name = speaker.name.split.first
    @edit_link = edit_speaker_url(speaker, host: ENV['HOST_LINK'])
    mail(to: speaker.email, subject: 'Obrigado por enviar sua palestra!')
  end
end
