require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      customer_id: 1,
      total: 1.5,
      admin_id: 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[total]"

      assert_select "input[name=?]", "order[admin_id]"
    end
  end
end
