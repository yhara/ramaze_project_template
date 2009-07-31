#!/usr/bin/env rackup
# Ramaze for production
# usage:
#   $ ramaze start
#
require 'ramaze'

##
## Settings for production environment here.
##

require __DIR__('app.rb')
Ramaze.start(:root => __DIR__, :started => true)
run Ramaze
