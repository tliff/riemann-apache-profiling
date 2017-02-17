require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-mysql'

  s.name = 'riemann-apache-profiling'
  s.version = '0.1.0'
  s.author = 'Stefan Maier'
  s.email = 'stefnamaier@gmail.com'
  s.homepage = 'https://github.com/tliff/riemann-apache-profiling'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Submit apache logfile events to riemann'

  s.add_dependency 'riemann-tools', '>= 0.2.2'

  s.files = FileList['lib/**/*', 'bin/*', 'LICENSE', 'README.md'].to_a
  s.executables |= Dir.entries('bin/')
  s.require_path = 'lib'
  s.has_rdoc = false

  s.required_ruby_version = '>= 2.1.0'
end

Gem::PackageTask.new gemspec do |p|
end
