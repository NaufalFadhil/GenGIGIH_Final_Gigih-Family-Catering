require 'rails_helper'

RSpec.describe "order_details/index", type: :view do
  before(:each) do
    assign(:order_details, [
      OrderDetail.create!(
        order_id: 2,
        item_id: 3,
        quantity: 4
      ),
      OrderDetail.create!(
        order_id: 2,
        item_id: 3,
        quantity: 4
      )
    ])
  end

  it "renders a list of order_details" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
