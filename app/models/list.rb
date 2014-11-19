class List < ActiveRecord::Base
  belongs_to  :user
  has_many    :wanted_items
  has_many    :items, through: :wanted_items
end
