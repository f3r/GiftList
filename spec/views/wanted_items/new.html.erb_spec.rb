require 'rails_helper'

RSpec.describe "wanted_items/new", :type => :view do
  before(:each) do
    assign(:wanted_item, WantedItem.new())
  end

  it "renders new wanted_item form" do
    render

    assert_select "form[action=?][method=?]", wanted_items_path, "post" do
    end
  end
end
