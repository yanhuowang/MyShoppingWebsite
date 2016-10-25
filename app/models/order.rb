class Order < ActiveRecord::Base
	has_many :order_item

	#STATUS = [['New', 0], ['Paying', 1], ['Paid', 2], ['Checked', 3], ['Shipped', 4], ['Problem', 5]]
end