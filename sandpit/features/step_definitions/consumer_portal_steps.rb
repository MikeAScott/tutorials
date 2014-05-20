Given(/^I am on the Consumer Portal Home Page$/) do
  user_id = "songbird"
  password = "Inn0vat3"
  page_url = "os-bqa1.analoganalytics.com/consumer"
  visit "https://#{user_id}:#{password}@#{page_url}"
  
  page.title.should include("bespoke offers")
end

When(/^I click "(.*?)"$/) do |link|
  click_on link
end

Then(/^I expect to see the "(.*?)" form$/) do |text|
  expect(page).to have_content(text)
end