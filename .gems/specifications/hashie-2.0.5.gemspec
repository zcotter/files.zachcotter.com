# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hashie}
  s.version = "2.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh", "Jerry Cheung"]
  s.date = %q{2013-05-10}
  s.description = %q{Hashie is a small collection of tools that make hashes more powerful. Currently includes Mash (Mocking Hash) and Dash (Discrete Hash).}
  s.email = ["michael@intridea.com", "jollyjerry@gmail.com"]
  s.files = [".document", ".gitignore", ".rspec", ".travis.yml", ".yardopts", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile", "Guardfile", "LICENSE", "README.markdown", "Rakefile", "hashie.gemspec", "lib/hashie.rb", "lib/hashie/clash.rb", "lib/hashie/dash.rb", "lib/hashie/extensions/coercion.rb", "lib/hashie/extensions/deep_merge.rb", "lib/hashie/extensions/indifferent_access.rb", "lib/hashie/extensions/key_conversion.rb", "lib/hashie/extensions/merge_initializer.rb", "lib/hashie/extensions/method_access.rb", "lib/hashie/extensions/structure.rb", "lib/hashie/hash.rb", "lib/hashie/hash_extensions.rb", "lib/hashie/mash.rb", "lib/hashie/trash.rb", "lib/hashie/version.rb", "spec/hashie/clash_spec.rb", "spec/hashie/dash_spec.rb", "spec/hashie/extensions/coercion_spec.rb", "spec/hashie/extensions/deep_merge_spec.rb", "spec/hashie/extensions/indifferent_access_spec.rb", "spec/hashie/extensions/key_conversion_spec.rb", "spec/hashie/extensions/merge_initializer_spec.rb", "spec/hashie/extensions/method_access_spec.rb", "spec/hashie/hash_spec.rb", "spec/hashie/mash_spec.rb", "spec/hashie/trash_spec.rb", "spec/spec.opts", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/intridea/hashie}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Your friendly neighborhood hash toolkit.}
  s.test_files = ["spec/hashie/clash_spec.rb", "spec/hashie/dash_spec.rb", "spec/hashie/extensions/coercion_spec.rb", "spec/hashie/extensions/deep_merge_spec.rb", "spec/hashie/extensions/indifferent_access_spec.rb", "spec/hashie/extensions/key_conversion_spec.rb", "spec/hashie/extensions/merge_initializer_spec.rb", "spec/hashie/extensions/method_access_spec.rb", "spec/hashie/hash_spec.rb", "spec/hashie/mash_spec.rb", "spec/hashie/trash_spec.rb", "spec/spec.opts", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<growl>, [">= 0"])
    else
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<growl>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<growl>, [">= 0"])
  end
end
