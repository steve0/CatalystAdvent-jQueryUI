
=head1 Application Synopsis

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

=head1 Application Description/Specification

=head2 Authentication

Users will log into the application using a username/password.  No roles will
be required.  TODO: use CatalystX::SimpleLogin ?

=head2 Welcome Screen

Once logged in, the user will be presented with an 'Order Entry' screen.  This
screen *could* initially display a list of all customers with search fields for
phone number, last name or possibly both.  Search fields and button would be at
the top of the list.  The list should display 'Phone Number', 'Last Name', and
'Street Address' fields.  Links should be provided on each customer row for
'Place Order' and 'Edit'.  Lastly, there should be a link or a button for 'Add
New Customer'.

=head2 Order entry

This could be a two tab form, with pizza info on one tab, then delivery on the
second tab.  These could easily be combined into a single page if there is a 
more appropriate use case for tabs.  The delivery tab would initially have two
checkboxes - one for 'Dine In', and the other for 'Delivery'.  If delivery is 
checked, we could potentially add the Delivery address fields, defaulted to the
customer's address, but allow for entry/override.  Use case would be a Mom who
wants to give her child a pizza party at a school, church, etc.

Once the user has selected the customer for whom we are placing the order, he
will be presented with the order entry screen.  This screen will display the
customer information at the top (I envision that this will be displayed 
throughout the entire ordering process).  At this point, the 'Order' will be
created (in DB), and the application will initially rendera 'Add Pizza' form.
The user will be required to select a 'Crust Type' - 'Deep Dish' or 'Thin 
Crust'), a size (12", 14", 18", or 24"), and then 'Toppings'.

Toppings will be selected from a list of possible toppings (from the 'Toppings'
table).  I envision a combo box, allowing the user to start typing the topping
name, and have the list gather matching entries from the table on the fly.
Once a topping is selected, the user must tell us what portion of the
pizza the topping is to cover.  Options for this are 'Whole' - default, 'Half',
or 'Double'.  User will have button for 'Add New Topping' that will dynamically
add new fields for another topping. ('Repeatable' fields feature demo).

There should be a button that allows the user to 'Complete Order', which will
update the database, then return the user to the 'Order Entry' screen.  The
user will again be presented with a list of all customers.
