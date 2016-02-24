module Uniteus
  class Prime
    class << self
      ##
      # Returns the first n primes
      def first(i = 1)
        i = i.to_i

        # Estimate the size of the nth primes
        case
          when i < 0
            return []
          when i <= 5
            n = i * 2 + 1
          when i > 5
            n = i * Math.log(i) + i * Math.log(Math.log(i))
        end

        # Implementation of the Sieves of Eratosthenes
        # see: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
        primes = (0..n).to_a
        primes[0] = primes[1] = nil

        primes.each do |p|
          next unless p
          break if p * p > n

          (p * p).step(n, p) do |m|
            primes[m] = nil
          end
        end

        primes.compact.first(i)
      end
    end
  end
end
