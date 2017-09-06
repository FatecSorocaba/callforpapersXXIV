require 'test_helper'

class SpeakersControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  test 'get index unsigned' do
    get :index
    assert_response :redirect
  end

  test 'get index signed as admin' do
    admin = Admin.create(
      email: 'admin@admin.com',
      password: '123123',
      password_confirmation: '123123'
    )

    sign_in admin
    get :index

    assert_response :success
  end
end
