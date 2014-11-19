class Item < ActiveRecord::Base
  has_many  :wanted_items
end
