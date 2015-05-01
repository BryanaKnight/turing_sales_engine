require 'csv'

class MerchantRepository

  def initialize(filename)
    @filename = filename

  end

  def read_file
    CSV.read(@filename, { headers: true, header_converters: :symbol })
  end

  def all
    all ||= read_file
  end
end
