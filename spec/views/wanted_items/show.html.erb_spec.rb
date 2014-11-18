require 'rails_helper'

RSpec.describe "wanted_items/show", :type => :view do
  before(:each) do
    @wanted_item = assign(:wanted_item, WantedItem.create!(
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
