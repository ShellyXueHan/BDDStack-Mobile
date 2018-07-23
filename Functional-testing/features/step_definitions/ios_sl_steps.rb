Given("I land on the Home screen") do
  find_element(id: "TextField2")
  find_element(id: "TextField1")
end

When("I enter two numbers") do
  find_element(id: "TextField1").send_key("12")
  find_element(id: "TextField2").send_key("10")
end

When("I click the sum up button") do
  find_element(id: "ComputeSumButton").click
end

Then("I should see the result") do
  result = find_element(class: "UIAStaticText").text()
  expect(result).to eq("22")
end