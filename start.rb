# Ramaze for development
# usage:
#   $ ruby start.rb
#
require 'ramaze'
require __DIR__('options.rb')

##
## Settings for development environment here.
##

require __DIR__('app.rb')
Ramaze.start(:port => 7000, :root => __DIR__)
