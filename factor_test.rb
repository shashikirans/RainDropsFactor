#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'raindropfactor'

class FactorTest < Minitest::Test
  def test_1
    assert_equal '1', Raindropfactor.convert(1)
  end
  def test_3
    assert_equal 'Pling', Raindropfactor.convert(3)
  end

  def test_5
    assert_equal 'Plang', Raindropfactor.convert(5)
  end

  def test_7
    assert_equal 'Plong', Raindropfactor.convert(7)
  end

  def test_6
    assert_equal 'Pling', Raindropfactor.convert(6)
  end

  def test_9
    assert_equal 'Pling', Raindropfactor.convert(9)
  end

  def test_10
    assert_equal 'Plang', Raindropfactor.convert(10)
  end

  def test_14
    assert_equal 'Plong', Raindropfactor.convert(14)
  end

  def test_15
    assert_equal 'PlingPlang', Raindropfactor.convert(15)
  end

  def test_30
    assert_equal 'PlingPlang', Raindropfactor.convert(30)
  end

  def test_55
    assert_equal 'Plang', Raindropfactor.convert(65)
  end

  def test_35
    assert_equal 'PlangPlong', Raindropfactor.convert(35)
  end

  def test_49
    assert_equal 'Plong', Raindropfactor.convert(49)
  end

  def test_52
    assert_equal '52', Raindropfactor.convert(52)
  end

  def test_105
    assert_equal 'PlingPlangPlong', Raindropfactor.convert(105)
  end

  def test_2345
    assert_equal 'PlangPlong', Raindropfactor.convert(2345)
  end
end
