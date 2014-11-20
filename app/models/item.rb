class Item < ActiveRecord::Base
  has_many  :wanted_items
def self.search(query)
  where("name like ?", "%#{query}%") 
end
end