Pod::Spec.new do |spec|
  spec.name             = 'SemicolonDesign'
  spec.version          = ENV['LIB_VERSION']
  spec.summary          = 'Semicolon; design system'
  spec.description      = 'Semicolon;에서 개발한 교내 프로젝트 전용 디자인 시스템입니다.'
  spec.homepage         = 'https://github.com/semicolonDSM/SemicolonDesign_iOS'

  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'semicolondsmkr' => 'kimxwan0319@naver.com' }
  spec.source           = { :git => 'https://github.com/semicolonDSM/SemicolonDesign_iOS.git', :tag => spec.version.to_s }
  spec.ios.deployment_target = '12.0'
  spec.source_files  = 'Sources/'

  spec.dependency 'SnapKit', '~> 5.0.1'
  spec.dependency 'Then', '~> 2.7.0'

  spec.swift_version = '5.0'
end
