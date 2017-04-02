# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reading_list/version'

Gem::Specification.new do |spec|
  spec.name          = 'reading_list'
  spec.version       = ReadingList::VERSION
  spec.authors       = ['Joshua Tompkins']
  spec.email         = ['josh@joshtompkins.com']

  spec.summary       = 'A simple static generator for reading lists.'
  spec.homepage      = 'TODO: Put your gem\'s website or public repo URL here.'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = 'bin'
  spec.executables << 'reading_list'
  spec.require_paths = ['lib']

  spec.add_dependency 'mustache', '~> 1.0'
  spec.add_dependency 'codependent', '~> 0.4'
  spec.add_dependency 'trollop', '~> 2.1', '>= 2.1.2'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rubocop', '~> 0.47.1'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'sass'
end
