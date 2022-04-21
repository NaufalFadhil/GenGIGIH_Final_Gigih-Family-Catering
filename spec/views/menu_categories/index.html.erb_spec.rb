require 'rails_helper'

RSpec.describe "menu_categories/index", type: :view do
  before(:each) do
    assign(:menu_categories, [
      MenuCategory.create!(
        menu_id: 2,
        category_id: 3
      ),
      MenuCategory.create!(
        menu_id: 2,
        category_id: 3
      )
    ])
  end

  it "renders a list of menu_categories" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
