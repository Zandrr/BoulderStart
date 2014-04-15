Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
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

