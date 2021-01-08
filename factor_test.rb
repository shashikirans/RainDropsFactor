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
end
