#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'raindropfactor'

class FactorTest < Minitest::Test
  def test_1
    assert_equal '1', Raindropfactor.convert(1)
  end
end
