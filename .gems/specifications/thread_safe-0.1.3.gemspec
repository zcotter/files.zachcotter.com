# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thread_safe}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charles Oliver Nutter", "thedarkone"]
  s.date = %q{2013-09-10}
  s.description = %q{Thread-safe collections and utilities for Ruby}
  s.email = ["headius@headius.com", "thedarkone2@gmail.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE", "README.md", "Rakefile", "examples/bench_cache.rb", "ext/org/jruby/ext/thread_safe/JRubyCacheBackendLibrary.java", "ext/org/jruby/ext/thread_safe/jsr166e/ConcurrentHashMapV8.java", "ext/org/jruby/ext/thread_safe/jsr166e/LongAdder.java", "ext/org/jruby/ext/thread_safe/jsr166e/Striped64.java", "ext/org/jruby/ext/thread_safe/jsr166y/ThreadLocalRandom.java", "ext/thread_safe/JrubyCacheBackendService.java", "lib/thread_safe.rb", "lib/thread_safe/atomic_reference_cache_backend.rb", "lib/thread_safe/cache.rb", "lib/thread_safe/mri_cache_backend.rb", "lib/thread_safe/non_concurrent_cache_backend.rb", "lib/thread_safe/synchronized_cache_backend.rb", "lib/thread_safe/synchronized_delegator.rb", "lib/thread_safe/util.rb", "lib/thread_safe/util/adder.rb", "lib/thread_safe/util/atomic_reference.rb", "lib/thread_safe/util/cheap_lockable.rb", "lib/thread_safe/util/power_of_two_tuple.rb", "lib/thread_safe/util/striped64.rb", "lib/thread_safe/util/volatile.rb", "lib/thread_safe/util/volatile_tuple.rb", "lib/thread_safe/util/xor_shift_random.rb", "lib/thread_safe/version.rb", "test/test_array.rb", "test/test_cache.rb", "test/test_cache_loops.rb", "test/test_hash.rb", "test/test_helper.rb", "test/test_synchronized_delegator.rb", "thread_safe.gemspec", "lib/thread_safe/jruby_cache_backend.jar"]
  s.homepage = %q{https://github.com/headius/thread_safe}
  s.licenses = ["Apache-2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A collection of data structures and utilities to make thread-safe programming in Ruby easier}
  s.test_files = ["test/test_array.rb", "test/test_cache.rb", "test/test_cache_loops.rb", "test/test_hash.rb", "test/test_helper.rb", "test/test_synchronized_delegator.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<atomic>, [">= 0"])
    else
      s.add_dependency(%q<atomic>, [">= 0"])
    end
  else
    s.add_dependency(%q<atomic>, [">= 0"])
  end
end
