package PizzaStore::Schema::Result::Pizza;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "EncodedColumn");

=head1 NAME

PizzaStore::Schema::Result::Pizza

=cut

__PACKAGE__->table("Pizzas");

=head1 ACCESSORS

=head2 id

  data_type: INT
  default_value: undef
  extra: HASH(0xaf9144c)
  is_auto_increment: 1
  is_nullable: 0
  size: 10

=head2 description

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 255

=head2 size

  data_type: VARCHAR
  default_value: undef
  is_nullable: 0
  size: 255

=head2 crust

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
  "size",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "crust",
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
  { "foreign.pizzaid" => "self.id" },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-12-10 14:50:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HNblPg6X3tzvjI2bhwB1NQ

__PACKAGE__->many_to_many( "toppings" => "pizzatoppings" , "toppingid" );

1;
=head1 AUTHOR

Steve Schafer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
