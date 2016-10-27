PACKAGES = %w(
  flare-url
)

desc "Set up the flare development environment."
task :setup do
  system("gem install bundler") unless system("which bundler")
  Rake::Task[:install].invoke

  puts "Setup complete!"
end

desc "Run `bundle update` for all packages."
task :bundle do
  PACKAGES.each do |package|
    sh("cd packages/#{package} && bundle update")
  end
end

desc "Run `bundle update` and `rake install` and all the packages."
task install: :bundle do
  PACKAGES.each do |package|
    sh("cd packages/#{package} && rake install")
  end
end
