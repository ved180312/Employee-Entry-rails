require "test_helper"

class EmployeeMailerTest < ActionMailer::TestCase
  test "signup_confirmation" do
    mail = EmployeeMailer.signup_confirmation
    assert_equal "Signup confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
