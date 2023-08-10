#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint mnc_identifier_ocr.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'mnc_identifier_ocr'
  s.version          = '0.0.6'
  s.summary          = 'MNC OCR identifier flutter plugin'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/mncinnovation/mnc_identifier_ocr'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Gifhary Syidhqa Hamim' => 'gifhary.hamim@mncgroup.com', 'Ari Fajrianda Alfi' => 'ari.alfi@mncgroup.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'

  s.dependency 'MNCIdentifier/OCR', '1.1.10'
  s.dependency 'GoogleMLKit/TextRecognition', '4.0.0'
  s.dependency 'GoogleMLKit/ObjectDetection', '4.0.0'

  s.platform = :ios, '11.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
  s.swift_version = '5.0'
end
