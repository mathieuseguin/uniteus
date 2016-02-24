require 'spec_helper'

RSpec.describe Uniteus::DisplayPrime do
  describe '.multiplication_table_for_first' do
    let(:res) {
      "---------------------------------\n" +
      "|       |     2 |     3 |     5 |\n" +
      "---------------------------------\n" +
      "|     2 |     4 |     6 |    10 |\n" +
      "---------------------------------\n" +
      "|     3 |     6 |     9 |    15 |\n" +
      "---------------------------------\n" +
      "|     5 |    10 |    15 |    25 |\n" +
      "---------------------------------\n"
    }

    it {
      expect(Uniteus::DisplayPrime.multiplication_table_for_first).to eq(res)
    }
  end
end
