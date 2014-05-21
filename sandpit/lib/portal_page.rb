class PortalPage
  include PageHelpers
  
  def check_is_signed_in
      expect(page).to have_content("You've signed in successfully.")
  end
  
  def go_to
    user_id = "songbird"
    password = "Inn0vat3"
    page_url = "os-bqa1.analoganalytics.com/consumer"
    visit "https://#{user_id}:#{password}@#{page_url}"
    
    page.title.should include("bespoke offers")
  end
end