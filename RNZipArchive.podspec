require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name           = 'RNZipArchive'
  s.version        = package['version']
  s.summary        = package['description']
  s.author         = package['author']
  s.license        = package['license']
  s.homepage       = 'https://github.com/InTeach/react-native-zip-archive'
  s.source         = { :git => 'https://github.com/InTeach/react-native-zip-archive.git', :tag => "v#{s.version}"}
  s.platform       = :ios, '8.0'
  s.preserve_paths = '*.js'
  s.library        = 'z'

  s.dependency 'React'
  s.dependency 'SSZipArchive', '~> 2.1'

  s.subspec 'Core' do |ss|
    ss.source_files = 'ios/RNZipArchive.{h,m}'
    ss.public_header_files = ['ios/RNZipArchive.h']
  end
end
