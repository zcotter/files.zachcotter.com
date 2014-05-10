# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yaml_db}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Wiggins", "Orion Henry"]
  s.date = %q{2012-04-30}
  s.description = %q{
YamlDb is a database-independent format for dumping and restoring data.  It complements the the database-independent schema format found in db/schema.rb.  The data is saved into db/data.yml.
This can be used as a replacement for mysqldump or pg_dump, but only for the databases typically used by Rails apps.  Users, permissions, schemas, triggers, and other advanced database features are not supported - by design.
Any database that has an ActiveRecord adapter should work
}
  s.email = %q{nate@ludicast.com}
  s.extra_rdoc_files = ["README.markdown"]
  s.files = [".travis.yml", "README.markdown", "Rakefile", "VERSION", "about.yml", "init.rb", "lib/csv_db.rb", "lib/serialization_helper.rb", "lib/tasks/yaml_db_tasks.rake", "lib/yaml_db.rb", "spec/base.rb", "spec/serialization_helper_base_spec.rb", "spec/serialization_helper_dump_spec.rb", "spec/serialization_helper_load_spec.rb", "spec/serialization_utils_spec.rb", "spec/yaml_dump_spec.rb", "spec/yaml_load_spec.rb", "spec/yaml_utils_spec.rb", "yaml_db.gemspec"]
  s.homepage = %q{http://github.com/ludicast/yaml_db}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{yaml_db allows export/import of database into/from yaml files}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end