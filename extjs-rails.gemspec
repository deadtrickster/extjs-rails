# -*- encoding: utf-8 -*-
require File.expand_path('../lib/extjs/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "extjs-rails"
  s.version = ExtJS::Rails::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Ilya Khaprov"]
  s.email = ["mail@publitechs.com"]
  s.homepage = "https://github.com/deadtrickster/extjs-rails"
  s.summary = "Use ExtJS with Rails 3"
  s.description = "This gem provides ExtJS driver for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = ""
  s.add_dependency "railties", ">= 3.2.0", "< 5.0"
  s.add_dependency "therubyracer"
  s.add_dependency "compass"

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
