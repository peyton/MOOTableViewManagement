Pod::Spec.new do |s|
  s.name        = "MOOTableViewManagement"
  s.version     = "0.1"
  s.summary     = "WIP"
  s.homepage    = "https://github.com/peyton/MOOTableViewManagement"
  s.author      = { "Peyton Randolph" => "peyton@cmu.edu" }
  s.source      = { :git => "https://github.com/peyton/MOOTableViewManagement.git" }
  s.license     = "Public Domain"
  s.description = "WIP"

  s.requires_arc = true
  s.ios.deployment_target = "5.0"

  s.source_files = "MOOTableViewManagement/*.{h,m}"

  s.dependency 'libextobjc/EXTConcreteProtocol', '~> 0.2.5'
end
