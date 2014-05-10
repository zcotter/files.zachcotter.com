u:Gem::SpecificationT[I"1.8.17:ETiI"yaml_db; TU:Gem::Version[I"
0.2.3; TIu:	Time��    :@_zoneI"UTC; TI"Byaml_db allows export/import of database into/from yaml files; TU:Gem::Requirement[[[I">=; TU;[I"0; TU;	[[[I">=; TU;[I"0; TI"	ruby; F[ 0I"nate@ludicast.com; T[I"Adam Wiggins; TI"Orion Henry; TI"�
YamlDb is a database-independent format for dumping and restoring data.  It complements the the database-independent schema format found in db/schema.rb.  The data is saved into db/data.yml.
This can be used as a replacement for mysqldump or pg_dump, but only for the databases typically used by Rails apps.  Users, permissions, schemas, triggers, and other advanced database features are not supported - by design.
Any database that has an ActiveRecord adapter should work
; TI"'http://github.com/ludicast/yaml_db; TT@[ 