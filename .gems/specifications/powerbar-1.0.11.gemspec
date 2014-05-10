# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{powerbar}
  s.version = "1.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Moe"]
  s.date = %q{2012-10-11}
  s.default_executable = %q{powerbar-demo}
  s.description = %q{The last progressbar-library you'll ever need}
  s.email = ["moe@busyloop.net"]
  s.executables = ["powerbar-demo"]
  s.files = [".gitignore", "Gemfile", "README.rdoc", "Rakefile", "ass/screenshot.png", "bin/powerbar-demo", "lib/powerbar.rb", "lib/powerbar/version.rb", "powerbar.gemspec"]
  s.homepage = %q{https://github.com/busyloop/powerbar}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The last progressbar-library you'll ever need}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ansi>, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<hashie>, [">= 1.1.0"])
    else
      s.add_dependency(%q<ansi>, ["~> 1.4.0"])
      s.add_dependency(%q<hashie>, [">= 1.1.0"])
    end
  else
    s.add_dependency(%q<ansi>, ["~> 1.4.0"])
    s.add_dependency(%q<hashie>, [">= 1.1.0"])
  end
end
