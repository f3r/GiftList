require 'rails_helper'

RSpec.describe "wanted_items/edit", :type => :view do
  before(:each) do
    @wanted_item = assign(:wanted_item, WantedItem.create!(
      :user_id => 1
    ))
  end

  it "renders the edit wanted_item form" do
    render

    assert_select "form[action=?][method=?]", wanted_item_path(@wanted_item), "post" do

      assert_select "input#wanted_item_user_id[name=?]", "wanted_item[user_id]"
    end
  end
end
