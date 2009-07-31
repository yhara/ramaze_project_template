class Something
  include DataMapper::Resource
  property :id, Serial
  property :name, String, :length => (1..100)
end
