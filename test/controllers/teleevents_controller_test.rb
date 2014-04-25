require 'test_helper'

class TeleeventsControllerTest < ActionController::TestCase
  setup do
    @teleevent = teleevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teleevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teleevent" do
    assert_difference('Teleevent.count') do
      post :create, teleevent: { date: @teleevent.date, description: @teleevent.description, phone: @teleevent.phone, title: @teleevent.title }
    end

    assert_redirected_to teleevent_path(assigns(:teleevent))
  end

  test "should show teleevent" do
    get :show, id: @teleevent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teleevent
    assert_response :success
  end

  test "should update teleevent" do
    patch :update, id: @teleevent, teleevent: { date: @teleevent.date, description: @teleevent.description, phone: @teleevent.phone, title: @teleevent.title }
    assert_redirected_to teleevent_path(assigns(:teleevent))
  end

  test "should destroy teleevent" do
    assert_difference('Teleevent.count', -1) do
      delete :destroy, id: @teleevent
    end

    assert_redirected_to teleevents_path
  end
end
