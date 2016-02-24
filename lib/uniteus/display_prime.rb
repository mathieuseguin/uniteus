module Uniteus
  class DisplayPrime
    class << self
      ##
      # Prints an horizontal line of '-'
      def printLine(primes)
        res = ''
        0.upto((primes.length + 1) * 8) { res += '-' }
        res += "\n"
        res
      end

      ##
      # Prints a row of values for all columns except the first one
      def printRow(primes)
        res = ''
        primes.each { |i| res += sprintf(" %5d |", i) }
        res += "\n"
        res
      end

      ##
      # Prints the multiplication table for the first n primes
      def multiplication_table_for_first(i = 3)
        primes = Prime.first(i)

        res = ''
        res += printLine(primes)
        res += '|       |'
        res += printRow(primes)
        res += printLine(primes)

        primes.each do |x|
          res += sprintf("| %5d |", x)
          y = primes.map{|i| x * i}
          res += printRow(y)
          res += printLine(y)
        end

        res
      end
    end
  end
end
