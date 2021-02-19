class Tipper
  TAX = 0.05

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    amount + tax - discount + tip
  end

  def tax
    amount * TAX
  end

  def discount
    amount * discount_percentage / 100.0
  end

  def tip
    amount * tip_percentage / 100.0
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage
end
