require "test_helper"

class RenderingTest < ActionDispatch::IntegrationTest
  test ".rb template handler" do
    get "/handlers/rb_handler"
    expected = "This is my first <b>template handler</b>!"
    assert_match expected, response.body
  end

  test ".string template handler" do
    get "/handlers/string_handler"
    expected = "Congratulations! You just created another template handler!"
    assert_match expected, response.body
  end

  test ".md template handler" do
    get "/handlers/rdiscount_handler"
    expected = "<p>RDiscount is <em>cool</em> and <strong>fast</strong>!</p>"
    assert_match expected, response.body
  end

  test ".merb template handler" do
    get "/handlers/merb"
    expected = "<p>MERB template handler is <strong>cool and fast</strong>!</p>"
    assert_match expected, response.body.strip
  end
end
