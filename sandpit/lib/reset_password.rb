class ResetPasswordPage
include PageHelpers
  
  def forgotten_password
    click_on "Forgotten your password?"
  end 
  
end