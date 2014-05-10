# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{atomic}
  s.version = "1.1.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charles Oliver Nutter", "MenTaLguY", "Sokolov Yura"]
  s.date = %q{2013-09-10}
  s.description = %q{An atomic reference implementation for JRuby, Rubinius, and MRI}
  s.email = ["headius@headius.com", "mental@rydia.net", "funny.falcon@gmail.com"]
  s.extensions = ["ext/extconf.rb"]
  s.files = ["test/test_atomic.rb", "ext/extconf.rb", ".gitignore", ".travis.yml", "LICENSE", "README.md", "Rakefile", "atomic.gemspec", "examples/atomic_example.rb", "examples/bench_atomic.rb", "examples/bench_atomic_1.rb", "examples/graph_atomic_bench.rb", "ext/AtomicReferenceService.java", "ext/atomic_reference.c", "ext/org/jruby/ext/atomic/AtomicReferenceLibrary.java", "lib/atomic.rb", "lib/atomic/concurrent_update_error.rb", "lib/atomic/delegated_update.rb", "lib/atomic/direct_update.rb", "lib/atomic/fallback.rb", "lib/atomic/jruby.rb", "lib/atomic/numeric_cas_wrapper.rb", "lib/atomic/rbx.rb", "lib/atomic/ruby.rb"]
  s.homepage = %q{http://github.com/headius/ruby-atomic}
  s.licenses = ["Apache-2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{An atomic reference implementation for JRuby, Rubinius, and MRI}
  s.test_files = ["test/test_atomic.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
