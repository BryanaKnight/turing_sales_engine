require 'minitest'
require 'minitest/autorun'
require './lib/invoice'
require 'date'

class InvoiceTest < Minitest::Test

  def example_invoice_data
    { id: 1,
      customer_id: 2,
      merchant_id: 3,
      status: "Pending",
      created_at: Date.today - 1,
      updated_at: Date.today,
    }
  end

  def test_initialize_creates_invoice
    invoice = Invoice.new(example_invoice_data)
    assert_equal 1, invoice.id
    assert_equal 2, invoice.customer_id
    assert_equal 3, invoice.merchant_id
    assert_equal "Pending", invoice.status
    assert_equal (Date.today - 1), invoice.created_at
    assert_equal Date.today, invoice.updated_at
  end
end
