# encoding: UTF-8
version = File.read(File.expand_path("../.version", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = "flare"
  s.version = version
  s.licenses = "MIT"
  s.summary = "Ignite your ruby development."
  s.description = "Convention over configuration framework for building apps."
  s.authors = "Mark Miyashita"
  s.email = "negativetwelve@gmail.com"
  s.homepage = "https://github.com/negativetwelve/flare"

  # Source
  s.files = Dir["{lib}/**/*", "Rakefile", "readme.md"]

  # Ruby
  s.required_ruby_version = ">= 2.3.0"
  s.required_rubygems_version = ">= 2.5.1"

  # Dependencies

  # Flare Dependencies
  s.add_dependency "flare-url", "0.1.1"

  # Development
  s.add_development_dependency "rake", "10.5.0"
end
