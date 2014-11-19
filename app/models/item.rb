class Item < ActiveRecord::Base
  belongs_to  :wanted_items
  has_many    :lists, through: :wanted_items
end
