require 'dm-core'

db_path = "somewhere"
DataMapper.setup(:default, "sqlite3://#{db_path}")

require __DIR__('something.rb')
DataMapper.auto_upgrade!

# 
# ramaze (2009.07) paginate for datamapper
#
require 'dm-aggregates'
require 'ramaze/helper/paginate'
class DataMapper::Collection
  def paginate(page, limit)
    def self.size
      self.count
    end
    def self.empty?
      size != 0
    end
    Ramaze::Helper::Paginate::Paginator::ArrayPager.new(self, page, limit)
  end
end
