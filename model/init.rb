require 'dm-core'

db_path = "somewhere"
DataMapper.setup(:default, "sqlite3://#{db_path}")

require __DIR__('something.rb')
DataMapper.auto_upgrade!

# 
# ramaze (2009.06.12) paginate for datamapper
#
require 'ramaze/helper/paginate'
class DataMapper::Collection
  def paginate(page, limit)
    Ramaze::Helper::Paginate::Paginator::ArrayPager.new(self, page, limit)
  end
end
