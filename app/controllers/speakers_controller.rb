class SpeakersController < ApplicationController
  before_action :set_speaker, only: [:show, :edit, :update, :destroy]

  # GET /speakers
  def index
    @speakers = Speaker.all
  end

  # GET /speakers/1
  def show
  end

  # GET /speakers/new
  def new
    @speaker = Speaker.new
    @talk = Talk.new
  end

  # GET /speakers/1/edit
  def edit
  end

  # POST /speakers
  def create
    @speaker = Speaker.new(create_params)

    if @speaker.save
      SpeakerMailer.submitted_talk(@speaker, domain).deliver_now
      redirect_to edit_speaker_path(@speaker), notice: 'Speaker was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /speakers/1
  def update
    if @talk.update(talk_params) && @speaker.update(speaker_params)
      redirect_to edit_speaker_path(@speaker), notice: 'Speaker was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /speakers/1
  def destroy
    @speaker.destroy
    redirect_to speakers_url, notice: 'Speaker was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_speaker
    @speaker = Speaker.find_by(uuid: params[:uuid])
    @talk = @speaker.talk unless @speaker.nil?
  end

  # Only allow a trusted parameter "white list" through.
  def create_params
    params.require(:speaker).permit(:name, :picture, :company, :biography,
    :website, :email, talk_attributes: [:kind, :title, :description, :theme, :required_knowledge])
  end

  def speaker_params
    params.require(:speaker).permit(:name, :picture, :company, :biography,
    :website, :email)
  end

  def talk_params
    params.require(:speaker).require(:talk_attributes).permit(:kind, :title, :description, :theme, :required_knowledge)
  end

  def domain
    if request.subdomains.empty?
      request.domain
    else
      "#{request.subdomains.join('.')}.#{request.domain}"
    end
  end
end
