require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :image => "MyString",
      :price => 1.5,
      :description => "MyText",
      :category => "MyString",
      :rating => 1,
      :list_id => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_image[name=?]", "item[image]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_category[name=?]", "item[category]"

      assert_select "input#item_rating[name=?]", "item[rating]"

      assert_select "input#item_list_id[name=?]", "item[list_id]"
    end
  end
end
