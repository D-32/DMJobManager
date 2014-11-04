Pod::Spec.new do |s|
  s.name             = "DMJobManager"
  s.version          = "1.0.0"
  s.summary          = "Job queue system"
  s.homepage         = "https://github.com/d-32/DMJobManager"
  s.license          = 'MIT'
  s.author           = { "Dylan Marriott" => "info@d-32.com" }
  s.source           = { :git => "https://github.com/d-32/DMJobManager.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'DMJobManager' => ['Pod/Assets/*.png']
  }
end
