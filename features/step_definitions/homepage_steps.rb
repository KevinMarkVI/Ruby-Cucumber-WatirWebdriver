Given /^I am on github homepage$/ do
  @browser.goto "http://www.github.com"
end


Then /^the title of the page should be "(.*)"$/ do | titleText |
  expect(@browser.title).to be == titleText
end
