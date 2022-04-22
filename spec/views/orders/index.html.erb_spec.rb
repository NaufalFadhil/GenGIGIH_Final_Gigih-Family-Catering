require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        customer_id: "Customer",
        total: 2,
        created_by: "Created By"
      ),
      Order.create!(
        customer_id: "Customer",
        total: 2,
        created_by: "Created By"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: "Customer".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Created By".to_s, count: 2
  end
end
