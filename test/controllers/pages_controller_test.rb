require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get library" do
    get pages_library_url
    assert_response :success
  end

  test "should get path" do
    get pages_path_url
    assert_response :success
  end

  test "should get path_cover" do
    get pages_path_cover_url
    assert_response :success
  end

  test "should get course_cover" do
    get pages_course_cover_url
    assert_response :success
  end

  test "should get course_video" do
    get pages_course_video_url
    assert_response :success
  end

end
