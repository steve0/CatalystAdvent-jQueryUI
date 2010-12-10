package PizzaStore::Schema::Result::Pizzatopping;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "EncodedColumn");

=head1 NAME

PizzaStore::Schema::Result::Pizzatopping

=cut

__PACKAGE__->table("PizzaToppings");

=head1 ACCESSORS

=head2 pizzaid

  data_type: INT
  default_value: undef
  extra: HASH(0xaf892b8)
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=head2 toppingid

  data_type: INT
  default_value: undef
  extra: HASH(0xaf71774)
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=cut

__PACKAGE__->add_columns(
  "pizzaid",
  {
    data_type => "INT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 10,
  },
  "toppingid",
  {
    data_type => "INT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
    size => 10,
  },
);
__PACKAGE__->set_primary_key("pizzaid", "toppingid");

=head1 RELATIONS

=head2 toppingid

Type: belongs_to

Related object: L<PizzaStore::Schema::Result::Topping>

=cut

__PACKAGE__->belongs_to(
  "toppingid",
  "PizzaStore::Schema::Result::Topping",
  { id => "toppingid" },
  {},
);

=head2 pizzaid

Type: belongs_to

Related object: L<PizzaStore::Schema::Result::Pizza>

=cut

__PACKAGE__->belongs_to(
  "pizzaid",
  "PizzaStore::Schema::Result::Pizza",
  { id => "pizzaid" },
  {},
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-12-10 14:50:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T0SxYPPkuSL5vxNJ361LMQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
