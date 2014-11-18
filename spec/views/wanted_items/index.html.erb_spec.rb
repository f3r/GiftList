require 'rails_helper'

RSpec.describe "wanted_items/index", :type => :view do
  before(:each) do
    assign(:wanted_items, [
      WantedItem.create!(
        :user_id => 1
      ),
      WantedItem.create!(
        :user_id => 1
      )
    ])
  end

  it "renders a list of wanted_items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
