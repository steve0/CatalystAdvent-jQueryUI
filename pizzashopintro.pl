=head1 Application Overview

This application will provide some of the core features that might be found
in a Point of Sale system for a pizza shop.

=cut
=head1 Tutorial Overview

This tutorial will demonstrate the integration of jQuery with Catalyst and
HTML::FormHandler.  

The tutorial will show how to use some of jQuery's features to make forms more
user-friendly.  

=cut

=head1 Data Store Functionality

Our database will contain the following tables:

  - Customers
  - Orders
  - Pizzas
  - Toppings
  - PizzaToppings
  - Users

Our POS system will allow users to maintain the following customer information:

  - First name
  - Last name
  - Phone #
  - Address (street1, street2, city, state, zip)

It will allow users to take/create orders for a customer.  Orders will have 
the following attributes:

  - Ordered On (timestamp)
  - Ordered By (user id or name)
  - Delivery flag (char)
  - Estimated delivery time - Minutes (set this ONLY if order is for delivery.) 
  - Customer (id)
  - Pizza's (has_many to 'Pizzas' table)
  
Pizza'a will have the following attributes:

  - Crust type
  - Size
  - Toppings (has_many to 'Toppings' table)
  
Toppings have a description only

PizzaToppings have the following attributes;

  - Portion (a decimal, or possibly enum - whole, half, third, two-thirds, etc.)
  - Pizza (id)
  - Toppings (id)



=cut
