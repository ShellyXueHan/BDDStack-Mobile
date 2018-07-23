require 'report_builder'

caps0 = @caps_ipad
caps1 = @caps_ipad_sim
# caps3 = @caps_android_emulator


# Before('@Local_Test') do
# 	@driver = Appium::Driver.new(caps0, true)
# 	Appium.promote_appium_methods Object
# 	@driver.start_driver
# end

# Before('@Android_Test') do
# 	@driver = Appium::Driver.new(caps1, true)
# 	Appium.promote_appium_methods Object
# 	@driver.start_driver
# end


Before('@restart') do
	@driver = Appium::Driver.new(caps1, true)
	Appium.promote_appium_methods Object
	@driver.start_driver
end

# Before('@skip') do 
#   skip_this_scenario
# end

After do |s|
  # If it fails, screenshot and quit.
  if s.failed?
    screenshot('results/failPage.png')
    embed('results/failPage.png', 'image/png')
    # @driver.quit
    Cucumber.wants_to_quit = true
  end
end

# Issue with screenshot_as:
# encoded_img = @driver.screenshot_as(:base64)
# embed("data:image/png;base64,#{encoded_img}",'image/png')

at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'results/'
    config.report_path = 'results/report'
    config.report_title = 'Range iOS Test Results'
    config.include_images = 'true'
    config.additional_info = {Browser: 'browser', Environment: 'environment', MoreInfo: 'more info'}
  end
  ReportBuilder.build_report
end