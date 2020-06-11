Pod::Spec.new do |s|
  s.name             = 'RxCyclone'
  s.version          = '0.1.0'
  s.summary          = 'Reactive iOS architecture based on reducible machine state container.'
  s.description      = <<-DESC
Reactive iOS architecture framework based on reducible machine state container.
                       DESC

  s.homepage         = 'https://github.com/lyzkov/RxCyclone'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Piotr Łyczba' => 'lyzkov@gmail.com' }
  s.source           = { :git => 'https://github.com/lyzkov/RxCyclone.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.3'

  s.swift_versions = ['4.0', '4.1', '4.2', '5.0']

  s.source_files = 'Sources/**/*'

  s.dependency 'RxFeedback', '~> 3.0'
end
