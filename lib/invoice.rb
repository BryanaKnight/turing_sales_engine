class Invoice
  attr_reader :id,
              :customer_id,
              :merchant_id,
              :status,
              :created_at,
              :updated_at

  def initialize(details)
    @id          = details[:id]
    @customer_id = details[:customer_id]
    @merchant_id = details[:merchant_id]
    @status      = details[:status]
    @created_at  = details[:created_at]
    @updated_at  = details[:updated_at]
  end

end
