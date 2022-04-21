require 'rails_helper'

RSpec.describe "menu_categories/edit", type: :view do
  before(:each) do
    @menu_category = assign(:menu_category, MenuCategory.create!(
      menu_id: 1,
      category_id: 1
    ))
  end

  it "renders the edit menu_category form" do
    render

    assert_select "form[action=?][method=?]", menu_category_path(@menu_category), "post" do

      assert_select "input[name=?]", "menu_category[menu_id]"

      assert_select "input[name=?]", "menu_category[category_id]"
    end
  end
end
