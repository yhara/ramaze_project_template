class Controller < Ramaze::Controller
  layout 'default'
  engine :Etanni
end

require __DIR__('main.rb')
require __DIR__('somethings.rb')
