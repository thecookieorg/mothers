require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pricing" do
    get :pricing
    assert_response :success
  end

  test "should get testimonials" do
    get :testimonials
    assert_response :success
  end

  test "should get careers" do
    get :careers
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get security" do
    get :security
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
