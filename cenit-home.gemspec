# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'cenit/home/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'cenit-home'
  s.version     = Cenit::Home.version
  s.summary     = 'The Cenit Home engine.'
  s.required_ruby_version = '>= 2.2.1'

  s.author    = 'Miguel Sancho'
  s.email     = 'miguelsancho@cenit.io'
  s.homepage  = 'https://github.com/cenit-io/cenit-home'
  s.license = 'MIT'

  # s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_development_dependency 'haml-rails'
  s.add_development_dependency 'sass-rails'
  s.add_dependency 'bootstrap-sass'
end
