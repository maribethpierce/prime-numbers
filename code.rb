# Find the first 1,000 prime numbers
# For example, the only divisors of 13 are 1 and 13, making 13 a prime number, while the number 24 has divisors 1, 2, 3, 4, 6, 8, 12, and 24 (corresponding to the factorization ), making 24 not a prime number. Positive integers other than 1 which are not prime are called composite numbers.
require 'pry'
@prime_numbers = []

def prime_collector
  n = 1
  until @prime_numbers.length == 1000
    if prime(n)
      @prime_numbers << n
    end
    n += 1
  end
end

def prime(number)
  arr = []
  (2..number-1).each do |n|
    if number % n == 0
      arr << n
    end
  end
  arr.length == 0
end

prime_collector()
p @prime_numbers.length
p @prime_numbers.last
