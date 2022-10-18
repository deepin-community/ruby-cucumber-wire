require 'cucumber'
require 'cucumber/rake/task'
require 'gem2deb/rake/spectask'

Gem2Deb::Rake::RSpecTask.new do |spec|
  spec.pattern = './spec/**/*_spec.rb'
end

Cucumber::Rake::Task.new do |t|
  t.bundler = false
  t.binary = '/usr/bin/cucumber'
  t.cucumber_opts = ['-f', 'progress', '--strict', 'features']
end
