class InvitesController < ApplicationController
  before_action :authenticate_admin!

  def new
  end

  def send_email
    InvitesMailer.invite_to_talk(send_email_params[:name],
                                 send_email_params[:email],
                                 parsed_url).deliver_now

    redirect_to new_invite_url, notice: 'Email enviado!'
  end

  private
  def send_email_params
    params.permit(:email, :name)
  end

  def parsed_url
    DomainUrlService.perform(request.domain, request.subdomains)
  end
end
