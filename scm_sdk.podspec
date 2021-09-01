Pod::Spec.new do |s|
  s.name         = "scm_sdk"
  s.version      = "1.0.3"
  s.summary      = "A brief description of sharedSdk project."
  s.description  = <<-DESC
  An extended description of MyFramework project.
  DESC
  s.homepage     = "https://github.com/Ilinich/Test-SDK-KMM"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2021
                   Permission is granted to...
                  LICENSE
                }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source       = { :git => "git@github.com:ihmara/SC-iOS-SDK-Distrib.git", :tag => "#{s.version}"}
  s.vendored_frameworks = "scm_sdk.xcframework"
  s.platform = :ios
  s.ios.deployment_target  = '14.1'
end
