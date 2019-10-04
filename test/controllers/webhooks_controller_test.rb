require 'test_helper'

class WebhooksControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get webhooks_callback_url
    assert_response :success
  end

  test "should get webhook" do
    get webhooks_webhook_url
    assert_response :success
  end

  test "should get dispachter" do
    get webhooks_dispachter_url
    assert_response :success
  end

end
