require 'rails_helper'

RSpec.describe "wanted_items/edit", :type => :view do
  before(:each) do
    @wanted_item = assign(:wanted_item, WantedItem.create!())
  end

  it "renders the edit wanted_item form" do
    render

    assert_select "form[action=?][method=?]", wanted_item_path(@wanted_item), "post" do
    end
  end
end
