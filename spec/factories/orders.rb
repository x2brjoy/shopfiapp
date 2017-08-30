FactoryGirl.define do
  factory :order do
    number "MyString"
    email "MyString"
    name "MyString"
    shopify_order_id 1
    order_date "2017-08-30 17:31:26"
    total 1.5
    line_item_count 1
  end
end
