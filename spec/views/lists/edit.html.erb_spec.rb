require 'rails_helper'

RSpec.describe "lists/edit", :type => :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :list_name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_list_name[name=?]", "list[list_name]"

      assert_select "input#list_user_id[name=?]", "list[user_id]"
    end
  end
end
