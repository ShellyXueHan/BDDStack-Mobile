
#
# Created by Shelly Han on 2018-07-23.
# TODO: Add license
#

require "yaml"
require "appium_lib"


=begin
Sample configuration for a local iPad simulator:

Device info:
(do `xcrun instruments -s devices` and get info from the list)
- deviceName
- platformName
- udid
- platformVersion


Application info:
- appPackage
- bundleId
- xcodeOrgId (iOS app need to have developer/distribution account to run tests)
- xcodeSigningId


Test info:
- newCommandTimeout (the timeout between each retry)
- automationName (specify the automation engine: XCUITest for iOS, UiAutomator2 for Android)
- setWebContentsDebuggingEnabled (optional: set true if webView is involved in Hybrid app)
- orientation (default is vertical)
- more information on other options: http://appium.io/docs/en/writing-running-appium/caps/
=end
def caps_ipad_sim
  { caps: {
      deviceName: "",
      platformName: "iOS",
      udid: "",
      platformVersion: "",
      appPackage: "",
      bundleId: "",
      xcodeOrgId: "",
      xcodeSigningId: "",
      newCommandTimeout: "3600",
      automationName: "XCUITest"
      # setWebContentsDebuggingEnabled: "true",
      # orientation: "LANDSCAPE",
      # noReset: "false",
      # fullReset: "false",
      # showIOSLog: "true",
      # autoAcceptAlerts: "true",
      # showXcodeLog: "true",
      # useNewWDA: "true"
      # resetOnSessionStartOnly: "true"
    }
  }
end

def caps_android_emulator
  { caps: {
      deviceName: "",
      platformName: "Android",
      appPackage: "",
      appActivity: "",
      newCommandTimeout: "3600",
      automationName: "XCUITest"
    }
  }
end


# configure iOS device from SauceLabs:
def caps_ios_sl
  { caps: {
      # for sauceLabs - ios:
      deviceName: "iPhone 6",
      platformName: "iOS",
      platformVersion: "8.4",
      app: "https://s3.amazonaws.com/appium/TestApp8.4.app.zip",
      deviceOrientation: "portrait",
      name: "Test Sample App",
      newCommandTimeout: "3600"
  },
    appium_lib: {
        server_url: "https://#{@userName_sl}:#{@accessKey_sl}@ondemand.saucelabs.com:443/wd/hub"
    }
  }
end

# Pass caps as variable to hook
@caps_ipad_sim = caps_ipad_sim
@caps_android_emulator = caps_android_emulator
