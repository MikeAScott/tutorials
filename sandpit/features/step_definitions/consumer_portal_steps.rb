require 'sign_in_page'

def goto_consumer_portal_page
  user_id = "songbird"
  password = "Inn0vat3"
  page_url = "os-bqa1.analoganalytics.com/consumer"
  visit "https://#{user_id}:#{password}@#{page_url}"
  
  page.title.should include("bespoke offers")
end

Given(/^I am on the Consumer Portal Home Page$/) do
  goto_consumer_portal_page
end

When(/^I click "(.*?)"$/) do |link|
  click_on link
end

Then(/^I expect to see the "(.*?)" form$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I am on the user login page$/) do
  goto_consumer_portal_page
  click_on "Sign In"
  @sign_in_page = SignInPage.new
end

When(/^I enter email "(.*?)" with password "(.*?)"$/) do |email, password|
  @sign_in_page.fill_in_details(email, password)
end

Then(/^I expect to be signed in$/) do
  expect(page).to have_content("You've signed in successfully.")
end

When(/^I click the sign in button$/) do
  @sign_in_page.sign_in
end

Then(/^I expect to see error message: (.*)$/) do |error_message|
  @sign_in_page.expect_error error_message
end

When(/^I attempt to sign in with email: "(.*?)" and password: "(.*?)"$/) do |email, password|
  @sign_in_page.fill_in_details(email, password)
  @sign_in_page.sign_in
end


