# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'admin_theme/version'

Gem::Specification.new do |s|
  s.name        = 'admin_theme'
  s.version     = AdminTheme::VERSION
  s.summary     = "Admin theme for ActiveAdmin"
  s.description = "A new style spin for Active Admin"
  s.authors     = ["Everardo Medina"]
  s.files       = Dir["{app,lib}/**/*"] + ["README.md", 'LICENCE.txt']
  s.homepage    = 'https://github.com/rubixware/admin_theme'
  s.metadata    = {
    "source_code_uri" => "https://github.com/rubixware/admin_theme",
    "changelog_uri"   => "https://github.com/rubixware/admin_theme/releases",
  }

  s.license     = 'MIT'
  s.require_paths = ["lib"]
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
  s.add_dependency 'activeadmin', ['>= 1.1.0', '< 3.2']
  s.add_dependency 'font-awesome-sass', '~> 6.0'
end
