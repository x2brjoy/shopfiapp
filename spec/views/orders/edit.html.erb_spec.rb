require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :number => "MyString",
      :email => "MyString",
      :name => "MyString",
      :shopify_order_id => 1,
      :total => 1.5,
      :line_item_count => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_number[name=?]", "order[number]"

      assert_select "input#order_email[name=?]", "order[email]"

      assert_select "input#order_name[name=?]", "order[name]"

      assert_select "input#order_shopify_order_id[name=?]", "order[shopify_order_id]"

      assert_select "input#order_total[name=?]", "order[total]"

      assert_select "input#order_line_item_count[name=?]", "order[line_item_count]"
    end
  end
end
