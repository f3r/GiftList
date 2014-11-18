require 'rails_helper'

RSpec.describe "wanted_items/new", :type => :view do
  before(:each) do
    assign(:wanted_item, WantedItem.new(
      :user_id => 1
    ))
  end

  it "renders new wanted_item form" do
    render

    assert_select "form[action=?][method=?]", wanted_items_path, "post" do

      assert_select "input#wanted_item_user_id[name=?]", "wanted_item[user_id]"
    end
  end
end
