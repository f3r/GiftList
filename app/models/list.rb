class List < ActiveRecord::Base
  belongs_to   :user
  has_many     :wanted_items
end
