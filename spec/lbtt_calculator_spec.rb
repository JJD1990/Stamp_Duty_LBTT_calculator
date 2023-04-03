require 'rspec'
require_relative '../lib/lbtt_calculator'

RSpec.describe LBTT_Calculator do
  it 'calculates LBTT for a house worth £200,000' do
    calculator = LBTT_Calculator.new(200_000)
    expect(calculator.calculate).to eq(1_100)
  end

  it 'calculates LBTT for a house worth £300,000' do
    calculator = LBTT_Calculator.new(300_000)
    expect(calculator.calculate).to eq(4_600)
  end

  it 'calculates LBTT for a house worth £1,000,000' do
    calculator = LBTT_Calculator.new(1_000_000)
    expect(calculator.calculate).to eq(78_350)
  end
end

