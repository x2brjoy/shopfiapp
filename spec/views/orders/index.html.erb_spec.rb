require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :number => "Number",
        :email => "Email",
        :name => "Name",
        :shopify_order_id => 2,
        :total => 3.5,
        :line_item_count => 4
      ),
      Order.create!(
        :number => "Number",
        :email => "Email",
        :name => "Name",
        :shopify_order_id => 2,
        :total => 3.5,
        :line_item_count => 4
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
