lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name                  = 'appsec_flow_anvil'
  s.version               = '0.0.2'
  s.date                  = '2017-11-19'
  s.summary               = 'AppSec Flow REST API Client'
  s.description           = 'Ruby wrapper for the REST API for Conviso Armature'
  s.authors               = ['Anezio Campos']
  s.email                 = 'newdevas@gmail.com'
  s.files                 = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.homepage              = 'http://app.conviso.com.br'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.4.2'
  s.bindir                = 'exe'
  s.executables           = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths         = ['lib']
  s.add_development_dependency 'bundler', '~> 1.8'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
end
