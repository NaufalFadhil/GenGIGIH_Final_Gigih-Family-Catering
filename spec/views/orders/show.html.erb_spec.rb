require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      customer_id: "Customer",
      total: 2,
      created_by: "Created By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Customer/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Created By/)
  end
end
