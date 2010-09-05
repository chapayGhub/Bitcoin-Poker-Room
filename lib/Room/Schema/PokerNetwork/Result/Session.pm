package Room::Schema::PokerNetwork::Result::Session;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components(
  "InflateColumn::DateTime",
  "FrozenColumns",
  "FilterColumn",
  "EncodedColumn",
  "Core",
);
__PACKAGE__->table("session");
__PACKAGE__->add_columns(
  "user_serial",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "started",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "ended",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "ip",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 16 },
);
__PACKAGE__->set_primary_key("user_serial", "ip");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-08-27 00:26:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aoVvzFBPfJZgIvyqqB5UqQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;