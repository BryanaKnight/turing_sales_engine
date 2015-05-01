require 'minitest'
require 'minitest/autorun'
require './lib/merchant_repository'

class MerchantRepositoryTest < Minitest::Test

  def merchant_repo
    MerchantRepository.new("./data/test/merchants.csv")
  end

  def test_all_loads_merchants
    assert_equal 3, merchant_repo.all.count
  end

  def test_all_creates_merchant_objects
    assert_equal "Schroeder-Jerde", merchant_repo.all.first.name
  end

end
