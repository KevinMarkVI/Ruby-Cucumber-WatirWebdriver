And /^I fill out the "(.*)" field with "(.*)" on the My Sprint Login page$/ do | fieldName, text |
  page = MySprint.new(@browser)

  case fieldName.downcase
  when 'username'
  	page.username.when_present.set text
  when 'password'
  	page.password.when_present.set text
  else
  	raise "error: invalid argument"
  end
end

And 'I click the signin button on the My Sprint Login page' do
  page = MySprint.new(@browser)
  page.signin.click
end

