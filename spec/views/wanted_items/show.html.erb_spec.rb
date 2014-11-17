require 'rails_helper'

RSpec.describe "wanted_items/show", :type => :view do
  before(:each) do
    @wanted_item = assign(:wanted_item, WantedItem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
