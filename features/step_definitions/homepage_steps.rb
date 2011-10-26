Given /^I am on the twitflickup homepage$/ do
  page.visit("/")
end

Then /^I should see a tweet with the word "([^"]*)" in it$/ do |search|
  page.should have_content(search)
end

Then /^I should seen an image from Flickr$/ do
  page.has_selector?('#flickr-image img')
end
