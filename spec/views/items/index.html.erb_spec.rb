require 'rails_helper'

RSpec.describe "items/index", :type => :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :image => "Image",
        :price => 1.5,
        :description => "MyText",
        :category => "Category",
        :rating => 1,
        :list_id => 2
      ),
      Item.create!(
        :name => "Name",
        :image => "Image",
        :price => 1.5,
        :description => "MyText",
        :category => "Category",
        :rating => 1,
        :list_id => 2
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
