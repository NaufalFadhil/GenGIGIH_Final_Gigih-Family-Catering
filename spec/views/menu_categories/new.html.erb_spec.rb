require 'rails_helper'

RSpec.describe "menu_categories/new", type: :view do
  before(:each) do
    assign(:menu_category, MenuCategory.new(
      menu_id: 1,
      category_id: 1
    ))
  end

  it "renders new menu_category form" do
    render

    assert_select "form[action=?][method=?]", menu_categories_path, "post" do

      assert_select "input[name=?]", "menu_category[menu_id]"

      assert_select "input[name=?]", "menu_category[category_id]"
    end
  end
end
