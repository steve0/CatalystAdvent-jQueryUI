use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'CatalystX::jQuery::Tutorial' }
BEGIN { use_ok 'CatalystX::jQuery::Tutorial::Controller::Pizzas' }

ok( request('/pizzas')->is_success, 'Request should succeed' );
done_testing();
