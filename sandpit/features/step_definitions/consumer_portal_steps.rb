require 'sign_in_page'
require 'portal_page'
require 'current_page'

def sign_in_page
  @sign_in_page ||= SignInPage.new
end

def portal_page
  @portal_page ||= PortalPage.new
end

def current_page
  @current_page ||= CurrentPage.new
end

Given(/^I am on the Consumer Portal Home Page$/) do
  portal_page.go_to
end

When(/^I click "(.*?)"$/) do |link|
  click_on link
end

Then(/^I expect to see the "(.*?)" form$/) do |text|
  current_page.expect_to_see(text)
end

Given(/^I am on the user login page$/) do
  portal_page.go_to
  click_on "Sign In"
end

When(/^I enter email "(.*?)" with password "(.*?)"$/) do |email, password|
  sign_in_page.fill_in_details(email, password)
end

Then(/^I expect to be signed in$/) do
  portal_page.check_is_signed_in
end

When(/^I click the sign in button$/) do
  sign_in_page.sign_in
end

Then(/^I expect to see error message: (.*)$/) do |error_message|
  sign_in_page.expect_error error_message
end

When(/^I attempt to sign in with email: "(.*?)" and password: "(.*?)"$/) do |email, password|
  sign_in_page.fill_in_details(email, password)
  sign_in_page.sign_in
end

#TODO: Move these to an appropriate place
When(/^I hover over "(.*?)"$/) do |link|
  find_link(link).hover
  sleep(5)
end

Then(/^I expect to see the "(.*?)" link$/) do |link|
  expect(find_link link).to be_visible
end

