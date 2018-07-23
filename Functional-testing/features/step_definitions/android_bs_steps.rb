Given("I land on Home screen") do
  find_element(accessibility_id: "Search Wikipedia")
end

When("I click on the search button") do
  find_element(accessibility_id: "Search Wikipedia").click
end

When("I type in search string") do
  find_element(id: "org.wikipedia.alpha:id/search_src_text").send_key("BrowserStack")
end

Then("I should see results") do
  expect(find_elements(class: "android.widget.TextView")).not_to be_empty
end
