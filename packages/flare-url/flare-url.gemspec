# encoding: UTF-8
version = File.read(File.expand_path("../.version", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = "flare-url"
  s.version = version
  s.licenses = "MIT"
  s.summary = "Url and Mail parsers."
  s.description = "Url and Mail string parsers."
  s.authors = "Mark Miyashita"
  s.email = "negativetwelve@gmail.com"
  s.homepage = "http://markmiyashita.com"

  # Source
  s.files = Dir["{lib}/**/*", "Rakefile", "readme.md"]

  # Ruby
  s.required_ruby_version = ">= 2.3.0"
  s.required_rubygems_version = ">= 2.5.1"

  # Dependencies
  s.add_dependency "addressable", "2.4.0"
  s.add_dependency "mail", "2.6.4"
  s.add_dependency "public_suffix", "1.5.1"

  # Development
  s.add_development_dependency "rake", "10.5.0"
end
