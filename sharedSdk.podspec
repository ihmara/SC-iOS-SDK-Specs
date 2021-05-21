Pod::Spec.new do |spec|
  spec.name                     = 'sharedSdk'
    spec.version                  = '1.0.0'
    spec.homepage                 = 'https://www.shareddemo.com'
    spec.source                   = { :git => 'git@github.com:ihmara/SC-iOS-SDK-Distrib.git', :tag => '1.0.0' }
    spec.authors                  = ''
    spec.license                  = { :type => 'MIT', :text => '' }
    spec.summary                  = 'Shared demo pod'

    spec.platform                 = :ios
    spec.ios.deployment_target    = '12.0'
    spec.static_framework         = true
    spec.vendored_frameworks      = "sharedSdk.xcframework"
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    spec.user_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
spec.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }

    spec.pod_target_xcconfig = {
        'KOTLIN_TARGET[sdk=iphonesimulator*]' => 'ios_x64',
        'KOTLIN_TARGET[sdk=iphoneos*]' => 'ios_arm',
        'KOTLIN_TARGET[sdk=watchsimulator*]' => 'watchos_x86',
        'KOTLIN_TARGET[sdk=watchos*]' => 'watchos_arm',
        'KOTLIN_TARGET[sdk=appletvsimulator*]' => 'tvos_x64',
        'KOTLIN_TARGET[sdk=appletvos*]' => 'tvos_arm64',
        'KOTLIN_TARGET[sdk=macosx*]' => 'macos_x64'
    }
end
