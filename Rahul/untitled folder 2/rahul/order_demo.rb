class Address
	attr_accessor :city
end

class ShipperAddress < Address
	attr_accessor :name
end

class ShippingAddress < Address
	attr_accessor :name
end

class LineItem
	attr_accessor :sku, :name, :price, :quantity

	def to_s
		"SKU = #{sku}, Name = #{name}, Price = #{price}, Quantity = #{quantity}".gsub('\n','')
	end
end

class Order
	attr_accessor :order_number, :tracking_number, :email, :ship_address, :shipper_address

	def initialize
		@line_items = []
	end

	def add_line_item
		@line_items << get_line_item
	end

	def line_items
		@line_items
	end

	def get_shipper_details
		shipper = ShipperAddress.new
		puts "Enter Shipper Name"
		shipper.name = gets
		puts "Enter Shipper City"
		shipper.city = gets
		shipper
	end

	def get_shipping_details
		shipping = ShippingAddress.new
		puts "Enter Shipping Name"
		shipping.name = gets
		puts "Enter shipping City"
		shipping.city = gets
		shipping
	end

	def get_line_item
		l1 = LineItem.new
		puts "Enter SKU"
		l1.sku = gets
		l1.name = "Name of #{l1.sku}"
		puts "Enter Price"
		l1.price = gets
		puts "Enter Quantity"
		l1.quantity = gets
		l1
	end

	def print_invoice
		total = 0
		puts "============ Invoice =========="
		puts "Order Number => #{order_number}"
		puts "Tracking Number => #{tracking_number}"
		puts "Email => #{email}"
		puts "============ Shipper Details =========="
		puts "Name=> #{shipper_address.name}, City => #{shipper_address.city}"
		puts "============ Shipping Details =========="
		puts "Name=> #{ship_address.name}, City => #{ship_address.city}"
		puts "============ Products Details =========="
		line_items.each do |line_item|
			puts line_item.to_s
			total += line_item.quantity.to_i * line_item.price.to_i
		end
		puts "Total to be paid = #{total}"
	end
end


o = Order.new
puts "Enter Order Number"
o.order_number = gets

puts "Enter Order Number"
o.tracking_number = gets

puts "Enter Number Email"
o.email = gets

o.shipper_address = o.get_shipper_details

o.ship_address = o.get_shipping_details

(0..3).each do |i|
o.add_line_item
end

o.print_invoice

