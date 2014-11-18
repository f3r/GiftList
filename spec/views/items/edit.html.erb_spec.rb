require 'rails_helper'

RSpec.describe "items/edit", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :image => "MyString",
      :price => 1.5,
      :description => "MyText",
      :category => "MyString",
      :rating => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_image[name=?]", "item[image]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_category[name=?]", "item[category]"

      assert_select "input#item_rating[name=?]", "item[rating]"
    end
  end
end
