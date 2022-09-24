lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'material_icons_svg/version'

Gem::Specification.new do |s|
  s.name        = 'material_icons_svg'
  s.version     = MaterialIconsSvg::VERSION
  s.license     = 'MIT'
  s.summary     = 'Use Material Icons in your Rails project as inline SVG.'
  s.author      = 'Ian Li'
  s.email       = 'hello@owlstown.com'
  s.homepage    = 'http://github.com/owlstown/material_icons_svg'

  s.add_dependency 'inline_svg', '~> 1.0'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end
