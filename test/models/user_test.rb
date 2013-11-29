require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "auth_token generated" do
    user = users(:vikhyat)
    assert_not_equal user.auth_token.length, 32
    user.save
    assert_equal user.auth_token.length, 32
  end
end
