# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thor}
  s.version = "0.18.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz", "Jos\303\251 Valim"]
  s.date = %q{2013-03-30}
  s.default_executable = %q{thor}
  s.description = %q{A scripting framework that replaces rake, sake and rubigen}
  s.email = %q{ruby-thor@googlegroups.com}
  s.executables = ["thor"]
  s.files = [".document", "CHANGELOG.md", "LICENSE.md", "README.md", "Thorfile", "thor.gemspec", "bin/thor", "lib/thor/actions/create_file.rb", "lib/thor/actions/create_link.rb", "lib/thor/actions/directory.rb", "lib/thor/actions/empty_directory.rb", "lib/thor/actions/file_manipulation.rb", "lib/thor/actions/inject_into_file.rb", "lib/thor/actions.rb", "lib/thor/base.rb", "lib/thor/command.rb", "lib/thor/core_ext/hash_with_indifferent_access.rb", "lib/thor/core_ext/io_binary_read.rb", "lib/thor/core_ext/ordered_hash.rb", "lib/thor/error.rb", "lib/thor/group.rb", "lib/thor/invocation.rb", "lib/thor/parser/argument.rb", "lib/thor/parser/arguments.rb", "lib/thor/parser/option.rb", "lib/thor/parser/options.rb", "lib/thor/parser.rb", "lib/thor/rake_compat.rb", "lib/thor/runner.rb", "lib/thor/shell/basic.rb", "lib/thor/shell/color.rb", "lib/thor/shell/html.rb", "lib/thor/shell.rb", "lib/thor/util.rb", "lib/thor/version.rb", "lib/thor.rb", "spec/actions/create_file_spec.rb", "spec/actions/create_link_spec.rb", "spec/actions/directory_spec.rb", "spec/actions/empty_directory_spec.rb", "spec/actions/file_manipulation_spec.rb", "spec/actions/inject_into_file_spec.rb", "spec/actions_spec.rb", "spec/base_spec.rb", "spec/command_spec.rb", "spec/core_ext/hash_with_indifferent_access_spec.rb", "spec/core_ext/ordered_hash_spec.rb", "spec/exit_condition_spec.rb", "spec/fixtures/application.rb", "spec/fixtures/app{1}/README", "spec/fixtures/bundle/execute.rb", "spec/fixtures/bundle/main.thor", "spec/fixtures/command.thor", "spec/fixtures/doc/%file_name%.rb.tt", "spec/fixtures/doc/block_helper.rb", "spec/fixtures/doc/COMMENTER", "spec/fixtures/doc/config.rb", "spec/fixtures/doc/config.yaml.tt", "spec/fixtures/doc/excluding/%file_name%.rb.tt", "spec/fixtures/doc/README", "spec/fixtures/enum.thor", "spec/fixtures/group.thor", "spec/fixtures/invoke.thor", "spec/fixtures/path with spaces", "spec/fixtures/preserve/script.sh", "spec/fixtures/script.thor", "spec/fixtures/subcommand.thor", "spec/group_spec.rb", "spec/helper.rb", "spec/invocation_spec.rb", "spec/parser/argument_spec.rb", "spec/parser/arguments_spec.rb", "spec/parser/option_spec.rb", "spec/parser/options_spec.rb", "spec/rake_compat_spec.rb", "spec/register_spec.rb", "spec/runner_spec.rb", "spec/shell/basic_spec.rb", "spec/shell/color_spec.rb", "spec/shell/html_spec.rb", "spec/shell_spec.rb", "spec/subcommand_spec.rb", "spec/thor_spec.rb", "spec/util_spec.rb"]
  s.homepage = %q{http://whatisthor.com/}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A scripting framework that replaces rake, sake and rubigen}
  s.test_files = ["spec/actions/create_file_spec.rb", "spec/actions/create_link_spec.rb", "spec/actions/directory_spec.rb", "spec/actions/empty_directory_spec.rb", "spec/actions/file_manipulation_spec.rb", "spec/actions/inject_into_file_spec.rb", "spec/actions_spec.rb", "spec/base_spec.rb", "spec/command_spec.rb", "spec/core_ext/hash_with_indifferent_access_spec.rb", "spec/core_ext/ordered_hash_spec.rb", "spec/exit_condition_spec.rb", "spec/fixtures/application.rb", "spec/fixtures/app{1}/README", "spec/fixtures/bundle/execute.rb", "spec/fixtures/bundle/main.thor", "spec/fixtures/command.thor", "spec/fixtures/doc/%file_name%.rb.tt", "spec/fixtures/doc/block_helper.rb", "spec/fixtures/doc/COMMENTER", "spec/fixtures/doc/config.rb", "spec/fixtures/doc/config.yaml.tt", "spec/fixtures/doc/excluding/%file_name%.rb.tt", "spec/fixtures/doc/README", "spec/fixtures/enum.thor", "spec/fixtures/group.thor", "spec/fixtures/invoke.thor", "spec/fixtures/path with spaces", "spec/fixtures/preserve/script.sh", "spec/fixtures/script.thor", "spec/fixtures/subcommand.thor", "spec/group_spec.rb", "spec/helper.rb", "spec/invocation_spec.rb", "spec/parser/argument_spec.rb", "spec/parser/arguments_spec.rb", "spec/parser/option_spec.rb", "spec/parser/options_spec.rb", "spec/rake_compat_spec.rb", "spec/register_spec.rb", "spec/runner_spec.rb", "spec/shell/basic_spec.rb", "spec/shell/color_spec.rb", "spec/shell/html_spec.rb", "spec/shell_spec.rb", "spec/subcommand_spec.rb", "spec/thor_spec.rb", "spec/util_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
