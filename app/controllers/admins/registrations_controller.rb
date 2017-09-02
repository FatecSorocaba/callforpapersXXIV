class Admins::RegistrationsController < Devise::RegistrationsController
  prepend_before_action :set_minimum_password_length, only: [:new_admin]
  before_action :redirect_unauthenticated, only: [:new_admin]

  def new_admin
    build_resource({})
    yield resource if block_given?
    respond_with resource
  end

  def create_admin
    @admin = Admin.new new_admin_params

    if @admin.save
      redirect_to root_path
    else
      render new_admin @admin
    end
  end

  def new
    redirect_to root_path
  end

  def create
    redirect_to root_path
  end

  private

  def redirect_unauthenticated
    redirect_to root_path unless admin_signed_in?
  end

  def new_admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
