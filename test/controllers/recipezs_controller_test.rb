require 'test_helper'

class RecipezsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipez = recipezs(:one)
  end

  test "should get index" do
    get recipezs_url
    assert_response :success
  end

  test "should get new" do
    get new_recipez_url
    assert_response :success
  end

  test "should create recipez" do
    assert_difference('Recipez.count') do
      post recipezs_url, params: { recipez: { region: @recipez.region, title: @recipez.title } }
    end

    assert_redirected_to recipez_url(Recipez.last)
  end

  test "should show recipez" do
    get recipez_url(@recipez)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipez_url(@recipez)
    assert_response :success
  end

  test "should update recipez" do
    patch recipez_url(@recipez), params: { recipez: { region: @recipez.region, title: @recipez.title } }
    assert_redirected_to recipez_url(@recipez)
  end

  test "should destroy recipez" do
    assert_difference('Recipez.count', -1) do
      delete recipez_url(@recipez)
    end

    assert_redirected_to recipezs_url
  end
end
