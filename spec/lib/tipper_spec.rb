require 'spec_helper'

describe Tipper do
  describe '#total' do
    it 'returns the total due with tax and tip' do
      tipper = Tipper.new(amount: 100, tip_percentage: 20)
      expect(tipper.total).to eq 125
    end

    it 'returns the total due with tax, discount, and tip' do
      tipper = Tipper.new(amount: 100, discount_percentage: 20, tip_percentage: 20)
      expect(tipper.total).to eq 105
    end
  end
end
