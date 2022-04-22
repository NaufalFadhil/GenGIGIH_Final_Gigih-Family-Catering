require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      customer_id: "MyString",
      total: 1,
      created_by: "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[total]"

      assert_select "input[name=?]", "order[created_by]"
    end
  end
end
