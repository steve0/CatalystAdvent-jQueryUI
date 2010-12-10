package CatalystX::jQuery::Tutorial::Form::Pizza;

use HTML::FormHandler::Moose;
extends 'HTML::FormHandler::Model::DBIC';

=head1 NAME

CatalystX::jQuery::Tutorial::Form::Pizza - 
(HTML::FormHandler::Moose/HTML::FormHandler::Model::DBIC)

=head1 DESCRIPTION

HFH for Pizzas.  This form allows a user to create a pizza!

=head1 METHODS

=cut


has '+item_class' => ( default => 'Pizza' );

has_field 'description' =>
  ( type => 'Text', label => 'Description', required => 1 );

has_field 'crust' => ( type => 'Text', default => 'Thin Crust' );

has_field 'toppings' => 
  ( type => 'Repeatable', label => 'Toppings', num_when_empty => 1 );

has_field 'toppings.id' => ( type => 'PrimaryKey' );

has_field 'submit' => ( type => 'Submit', value => 'Submit' );
has_field 'cancel' => ( type => 'Submit', value => 'Cancel' );
has_field 'reset'  => ( type => 'Reset',  value => 'Reset form' );
=head1 AUTHOR

Steve Schafer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
