
Pod::Spec.new do |s|
  s.name             = 'TCExtensions'
  s.version          = '0.1.0'
  s.summary          = 'Swift common extensions'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tanchenggithub/TCExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '824376052@qq.com' => '824376052@qq.com' }
  s.source           = { :git => 'https://github.com/tanchenggithub/TCExtensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'TCExtensions/Classes/**/*'

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
