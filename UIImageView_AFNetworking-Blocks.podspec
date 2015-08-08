Pod::Spec.new do |s|
  s.name             = "UIImageView_AFNetworking-Blocks"
  s.version          = "0.1.0"
  s.summary          = "UIImageView+AFNetworking with a single completion block for success and failure."
  s.description      = <<-DESC
                       UIImageView+AFNetworking with more methods that give you a single callback for when the image load is finished (successfully  or not).
                       DESC
  s.homepage         = "https://github.com/pixio/UIImageView_AFNetworking-Blocks"
  s.license          = 'MIT'
  s.author           = { "Daniel Blakemore" => "DanBlakemore@gmail.com" }
  s.source = {
    :git => "https://github.com/pixio/UIImageView_AFNetworking-Blocks.git",
    :tag => s.version.to_s
  }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'AFNetworking', '~> 2.0'
end
