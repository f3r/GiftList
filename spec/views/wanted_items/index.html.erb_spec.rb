require 'rails_helper'

RSpec.describe "wanted_items/index", :type => :view do
  before(:each) do
    assign(:wanted_items, [
      WantedItem.create!(),
      WantedItem.create!()
    ])
  end

  it "renders a list of wanted_items" do
    render
  end
end
