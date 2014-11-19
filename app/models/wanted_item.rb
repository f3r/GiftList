class WantedItem < ActiveRecord::Base
  belongs_to    :lists
  has_one       :item
  has_many      :comments
end
