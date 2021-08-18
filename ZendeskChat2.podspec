require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'ZendeskChat2'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '12.0'
  s.dependency 'Capacitor'
  s.dependency 'ZendeskSDKMessaging'
  s.dependency 'ZendeskAnswerBotSDK'
  s.dependency 'ZendeskSupportSDK', '~> 5.0.5'
  s.dependency 'ZendeskChatSDK'
  s.swift_version = '5.2.2'
end
