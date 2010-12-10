package CatalystX::jQuery::Tutorial::Controller::Pizzas;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

CatalystX::jQuery::Tutorial::Controller::Pizzas - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched CatalystX::jQuery::Tutorial::Controller::Pizzas in Pizzas.');
}


=head1 AUTHOR

Steve Schafer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

