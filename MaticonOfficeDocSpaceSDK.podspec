Pod::Spec.new do |s|
  s.name = 'MaticonOfficeDocSpaceSDK'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'
  s.version = '3.7.0'
  s.source = { :git => 'https://github.com/MaticonOffice/docspace-api-sdk-swift.git', :tag => 'v3.7.0' }
  s.authors = 'OpenAPI Generator'
  s.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.homepage = 'https://github.com/MaticonOffice/docspace-api-sdk-swift'
  s.summary = 'Maticon Office DocSpace SDK for Swift'
  s.module_name = 'MaticonOfficeDocSpaceSDK'
  s.source_files = 'Sources/MaticonOfficeDocSpaceSDK/**/*.swift'
  s.swift_version = '6.0'
  s.dependency 'Alamofire', '~> 5.10'
end
