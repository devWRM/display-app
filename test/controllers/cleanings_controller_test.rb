require 'test_helper'

class CleaningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cleaning = cleanings(:one)
  end

  test "should get index" do
    get cleanings_url, as: :json
    assert_response :success
  end

  test "should create cleaning" do
    assert_difference('Cleaning.count') do
      post cleanings_url, params: { cleaning: { action: @cleaning.action } }, as: :json
    end

    assert_response 201
  end

  test "should show cleaning" do
    get cleaning_url(@cleaning), as: :json
    assert_response :success
  end

  test "should update cleaning" do
    patch cleaning_url(@cleaning), params: { cleaning: { action: @cleaning.action } }, as: :json
    assert_response 200
  end

  test "should destroy cleaning" do
    assert_difference('Cleaning.count', -1) do
      delete cleaning_url(@cleaning), as: :json
    end

    assert_response 204
  end
end
