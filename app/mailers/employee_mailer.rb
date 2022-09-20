class EmployeeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employee_mailer.signup_confirmation.subject
  #
  def signup_confirmation(employee)
    @emp= employee

    mail to: employee.personal_email , subject: "sign up confirmation"
  end
end
