require 'test_helper'

class Homework5dbsControllerTest < ActionController::TestCase
  setup do
    @homework5db = homework5dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homework5dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homework5db" do
    assert_difference('Homework5db.count') do
      post :create, homework5db: { author: @homework5db.author, date: @homework5db.date, text: @homework5db.text, title: @homework5db.title }
    end

    assert_redirected_to homework5db_path(assigns(:homework5db))
  end

  test "should show homework5db" do
    get :show, id: @homework5db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homework5db
    assert_response :success
  end

  test "should update homework5db" do
    patch :update, id: @homework5db, homework5db: { author: @homework5db.author, date: @homework5db.date, text: @homework5db.text, title: @homework5db.title }
    assert_redirected_to homework5db_path(assigns(:homework5db))
  end

  test "should destroy homework5db" do
    assert_difference('Homework5db.count', -1) do
      delete :destroy, id: @homework5db
    end

    assert_redirected_to homework5dbs_path
  end
end
