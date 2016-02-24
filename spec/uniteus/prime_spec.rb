require 'spec_helper'

RSpec.describe Uniteus::Prime do
  let(:first_10_primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }

  describe '.first' do
    it { expect(Uniteus::Prime.first(0)).to eq([]) }
    it { expect(Uniteus::Prime.first).to eq(first_10_primes.slice(0, 1)) }
    it { expect(Uniteus::Prime.first(10)).to eq(first_10_primes) }
    it { expect(Uniteus::Prime.first("10")).to eq(first_10_primes) }
  end
end
