Pod::Spec.new do |s|
  s.name         = "ZYUIDebuggingInformationOverlay"
  s.version      = "1.0.0"
  s.summary      = "Zero config category enable UIDebuggingInformationOverlay."
  s.description  = <<-DESC
                    Zero config category enable UIDebuggingInformationOverlay. 零入侵实现开启UIDebuggingInformationOverlay
                   DESC

  s.homepage     = "https://github.com/tzuyangliu/UIDebuggingInformationOverlay"
  s.license      = "MIT"
  s.author             = { "zyliu" => "i@zyliu.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/tzuyangliu/UIDebuggingInformationOverlay.git", :tag => "#{s.version}" }
  s.source_files  = "", "*.{h,m}"
  s.frameworks   = "Foundation", "UIKit"
end
