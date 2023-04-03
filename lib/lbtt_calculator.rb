class LBTT_Calculator
  def initialize(price)
    @price = price
  end

  def calculate
    tax = 0
    tax += calculate_tax_band(0, 145_000, 0)
    tax += calculate_tax_band(145_001, 250_000, 0.02)
    tax += calculate_tax_band(250_001, 325_000, 0.05)
    tax += calculate_tax_band(325_001, 750_000, 0.10)
    tax += calculate_tax_band(750_001, Float::INFINITY, 0.12)
    tax.round
  end

  private

  def calculate_tax_band(lower, upper, rate)
    taxable_amount = [upper - 1, @price].min - lower + 1
    taxable_amount > 0 ? taxable_amount * rate : 0
  end
end
