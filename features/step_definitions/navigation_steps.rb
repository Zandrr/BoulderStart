Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /^I am a new, authenticated (.+)$/ do |orgtype|
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password, :orgtype => orgtype).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"

end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, with: value)
end


When /^I select "([^\"]*)" from "([^\"]*)"$/ do |value, field|
  page.select(value, :from => field)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

 When (/^(?:|I )follow "([^"]*)"$/) do |link|
   click_link(link)
 end

Then /^I should be on (.+)$/ do |page_name|
  current_path.should == path_to(page_name)
end

Then (/^(?:|I )should see "([^"]*)"$/) do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

