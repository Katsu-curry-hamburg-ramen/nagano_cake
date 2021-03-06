class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :customer

 enum payment_method: { credit_card: 0, transfer: 1 }
 enum status: { wait: 0 ,confirm: 1 ,product: 2 ,ready: 3 ,sent: 4 }
 
 def subtotal
  product.with_tax_price * quantity
 end
end
