Pod::Spec.new do |spec|
  spec.name         = 'TCGSDK'
  spec.version      = '1.1.6'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/tencentyun/cloudgame-ios-sdk'
  spec.summary      = 'Tencent Cloud Gaming Software Development Kit for iOS.'
  spec.authors      = { 'lyleyu' => 'lyleyu@tencent.com' }
  spec.source       = { :git => 'https://github.com/yujunleik/test_pod.git', :tag => "v#{spec.version}" }
  spec.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'OFF'
  }
  spec.source_files  = "SDK/TCGSDK.framework/Headers/*.h"
  spec.public_header_files = "SDK/TCGSDK.framework/Headers/*.h"
  spec.vendored_frameworks = 'SDK/TCGSDK.framework'
  spec.framework    = 'SystemConfiguration'
  spec.libraries = 'z'
  # spec.dependency "GoogleWebRTC"
  app_spec.info_plist = {
    'UISupportedInterfaceOrientations' => [
      'UIInterfaceOrientationPortrait',
      'UIInterfaceOrientationLandscapeLeft',
      'UIInterfaceOrientationLandscapeRight',
    ],
    'NSMicrophoneUsageDescription' => '云游戏互动时需要开启麦克风'
  }
end

