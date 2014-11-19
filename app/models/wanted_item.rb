class WantedItem < ActiveRecord::Base
  belongs_to    :lists
  belongs_to    :item
  has_many      :comments
end
