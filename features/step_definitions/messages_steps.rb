Given /^I am on the homepage$/ do
  visit root_path
end

When /^I fill in the message form$/ do
  fill_in "Message", with: "This is my message"
  click_button "Send"
end

Then /^I should see my message displayed$/ do
  within "#messages" do
    page.should have_content "This is my message"
  end
end
