require 'minitest'
require 'minitest/autorun'
require './lib/merchant_repository'

class MerchantRepositoryTest < Minitest::Test

  def test_all_loads_merchants
    merchant_repo = MerchantRepository.new("./data/test/merchants.csv")
    assert_equal 3, merchant_repo.all.count
  end

end
