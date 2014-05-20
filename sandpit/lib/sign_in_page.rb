class SignInPage
  include PageHelpers
  
  def fill_in_details(email,password)
    fill_in "consumer_email", :with => email
    fill_in "consumer_password", :with => password
  end
  
  def sign_in
    click_on "submit_button"
  end
  
  def expect_error(error_message)
    expect(page).to have_content(error_message)
  end
    
end