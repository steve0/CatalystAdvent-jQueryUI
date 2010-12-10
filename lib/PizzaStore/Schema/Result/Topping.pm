package PizzaStore::Schema::Result::Topping;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "EncodedColumn");

=head1 NAME

PizzaStore::Schema::Result::Topping

=cut

__PACKAGE__->table("Toppings");

=head1 ACCESSORS

=head2 id

  data_type: INT
  default_value: undef
  extra: HASH(0xaf91e60)
  is_auto_increment: 1
  is_nullable: 0
  size: 10

=head2 description

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "INT",
    default_value => undef,
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
    size => 10,
  },
  "description",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 pizzatoppings

Type: has_many

Related object: L<PizzaStore::Schema::Result::Pizzatopping>

=cut

__PACKAGE__->has_many(
  "pizzatoppings",
  "PizzaStore::Schema::Result::Pizzatopping",
  { "foreign.toppingid" => "self.id" },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-12-10 14:50:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j+srTIydrJdGqNR7Fkbk6Q


# You can replace this text with custom content, and it will be preserved on regeneration
1;
