# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{execjs}
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sam Stephenson", "Josh Peek"]
  s.date = %q{2013-08-21}
  s.description = %q{ExecJS lets you run JavaScript code from Ruby.}
  s.email = ["sstephenson@gmail.com", "josh@joshpeek.com"]
  s.files = ["README.md", "LICENSE", "lib/execjs/disabled_runtime.rb", "lib/execjs/encoding.rb", "lib/execjs/external_runtime.rb", "lib/execjs/johnson_runtime.rb", "lib/execjs/module.rb", "lib/execjs/mustang_runtime.rb", "lib/execjs/ruby_racer_runtime.rb", "lib/execjs/ruby_rhino_runtime.rb", "lib/execjs/runtime.rb", "lib/execjs/runtimes.rb", "lib/execjs/support/jsc_runner.js", "lib/execjs/support/jscript_runner.js", "lib/execjs/support/json2.js", "lib/execjs/support/node_runner.js", "lib/execjs/support/spidermonkey_runner.js", "lib/execjs/version.rb", "lib/execjs.rb"]
  s.homepage = %q{https://github.com/sstephenson/execjs}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Run JavaScript code from Ruby}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
