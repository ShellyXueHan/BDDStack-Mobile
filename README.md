# BDDStack-Mobile
Automated testing platform on mobile applications with BDD approach (Behaviour Driven Development).
This is the mobile version for original [BDDStack](https://github.com/BCDevOps/BDDStack).

## Features:
- support iOS and Android app testing
- support test result on a webview
- provide screenshot and view details of failing step in `Functional-testing/results`
- support continuous integration with Jenkinsfile



## Prerequist for running test cases locally:
General:
- Homebrew:
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Node:
`brew install node`
- Appium Server (with is based on Node.js):
`npm install -g appium@1.8.0`
- Appium Desktop (used for inspecting mobile application elements)
- Ruby (and set path):
`brew install ruby`
- Cucumber and other libraries required, refer to `./Gemfile`:
`bundle install`

For iOS:
- Xcode 9.x (and download simulators or connect real device)
- Xcode command line tool (that fit the Xcode version), verify target devices with:
`xcrun instruments -s devices`
- iOS app and device support:
`brew install ideviceinstaller`
`npm install -g ios-deploy`
`npm install -g deviceconsole`
- Apple developer account to enable functional testing


For Andoird:
- [Andriod SDK from](https://developer.android.com/sdk/index.html), set paths and verify with:
`adb version`



## Usage on local run:
- Start Appium:
`appium &`
- Execute tests, with environment setup in `config/cucumber.yml`:
`cucumber`


