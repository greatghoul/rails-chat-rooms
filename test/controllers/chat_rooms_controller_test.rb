require "test_helper"

class ChatRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chat_rooms_create_url
    assert_response :success
  end

  test "should get show" do
    get chat_rooms_show_url
    assert_response :success
  end
end
