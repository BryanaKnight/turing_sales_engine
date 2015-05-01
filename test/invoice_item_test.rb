require 'minitest'
require 'minitest/autorun'
require './lib/invoice_item'
require 'date'

class InvoiceItemTest < Minitest::Test

  def example_invoice_item_data
    { id: 1,
      item_id: 2,
      invoice_id: 3,
      quantity: 4,
      unit_price: 10,
      created_at: Date.today - 1,
      updated_at: Date.today,
    }
  end

  def test_initialize_creates_invoice_item
    invoice_item = InvoiceItem.new(example_invoice_item_data)
    assert_equal 1, invoice_item.id
    assert_equal 2, invoice_item.item_id
    assert_equal 3, invoice_item.invoice_id
    assert_equal 4, invoice_item.quantity
    assert_equal 10, invoice_item.unit_price
    assert_equal (Date.today - 1), invoice_item.created_at
    assert_equal Date.today, invoice_item.updated_at
  end
end
