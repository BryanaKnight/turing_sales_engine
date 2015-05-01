require 'minitest'
require 'minitest/autorun'
require './lib/merchant'
require 'date'

class MerchantTest < Minitest::Test

  def example_merchant_data
    { id: 1,
      name: "George",
      created_at: Date.today - 1,
      updated_at: Date.today,
    }
  end

  def test_initialize_creates_merchant
    merchant = Merchant.new(example_merchant_data)
    assert_equal 1, merchant.id
    assert_equal "George", merchant.name
    assert_equal (Date.today - 1), merchant.created_at
    assert_equal Date.today, merchant.updated_at
  end
end
