# Ramaze for testing
# usage:
#   $ bacon spec/*.rb
#
require 'ramaze'
require 'ramaze/spec'
require __DIR__('../options.rb')

##
## Settings for test environment here.
##

require __DIR__('../app.rb')
Ramaze.start(:port => 7000, :root => __DIR__('../'))


