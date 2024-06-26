# frozen_string_literal: true
Pod::Spec.new do |s|
  s.name             = 'FFmpeg'
  s.version          = '7.0.0'
  s.summary          = 'FFmpeg 7.0 static libraries for iOS'
  s.description      = <<-DESC
    FFmpeg 7.0 compiled as static libraries for iOS, supporting arm64 and x86_64 architectures.
  DESC
  s.homepage         = 'https://github.com/guanweidong/ffmpeg7.0'
  s.license          = { :type => 'GPL-3.0-or-later' }
  s.author           = { 'Your Name' => 'your@email.com' }
  s.platforms        = { :ios => '13.0' }
  s.swift_version    = '5.0'

  # Replace with the URL to your FFmpeg static libraries zip file
  s.source           = { :http => 'https://github.com/yourusername/FFmpeg/releases/download/6.0.0/FFmpeg-6.0.0.zip' }

  s.vendored_libraries = 'FFmpeg-iOS/lib/*.a'
  s.public_header_files = 'FFmpeg-iOS/include/**/*.h'

  s.frameworks       = 'AVFoundation', 'CoreGraphics', 'CoreMedia'

  s.pod_target_xcconfig = {
    'CLANG_ENABLE_MODULES' => 'No',
    'OTHER_LDFLAGS' => '-l"c++"'
  }

  s.user_target_xcconfig = {
    'CLANG_ENABLE_MODULES' => 'No'
  }
end

