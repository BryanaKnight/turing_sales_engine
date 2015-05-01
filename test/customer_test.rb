require 'minitest'
require 'minitest/autorun'
require './lib/customer'
require 'date'

class CustomerTest < Minitest::Test

  def example_customer_data
    { id: 1,
      first_name: "George",
      last_name: "Smith",
      created_at: Date.today - 1,
      updated_at: Date.today,
    }
  end

  def test_initialize_creates_customer
    customer = Customer.new(example_customer_data)
    assert_equal 1, customer.id
    assert_equal "George", customer.first_name
    assert_equal "Smith", customer.last_name
    assert_equal (Date.today - 1), customer.created_at
    assert_equal Date.today, customer.updated_at
  end
end
