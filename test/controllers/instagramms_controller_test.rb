require 'test_helper'

class InstagrammsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instagramm = instagramms(:one)
  end

  test "should get index" do
    get instagramms_url
    assert_response :success
  end

  test "should get new" do
    get new_instagramm_url
    assert_response :success
  end

  test "should create instagramm" do
    assert_difference('Instagramm.count') do
      post instagramms_url, params: { instagramm: { insta: @instagramm.insta } }
    end

    assert_redirected_to instagramm_url(Instagramm.last)
  end

  test "should show instagramm" do
    get instagramm_url(@instagramm)
    assert_response :success
  end

  test "should get edit" do
    get edit_instagramm_url(@instagramm)
    assert_response :success
  end

  test "should update instagramm" do
    patch instagramm_url(@instagramm), params: { instagramm: { insta: @instagramm.insta } }
    assert_redirected_to instagramm_url(@instagramm)
  end

  test "should destroy instagramm" do
    assert_difference('Instagramm.count', -1) do
      delete instagramm_url(@instagramm)
    end

    assert_redirected_to instagramms_url
  end
end
