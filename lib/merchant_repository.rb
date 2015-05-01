require 'csv'
require_relative 'merchant'

class MerchantRepository

  def initialize(filename="./data/merchants.csv")
    @filename = filename
  end

  def read_file
    CSV.read(@filename, { headers: true, header_converters: :symbol })
  end

  def all
    all ||= read_file.map { |row| Merchant.new(row) }
  end
end
