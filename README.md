# Goal

This program prints out a multiplication table of the first 10 primary numbers.


# Install

```
$ bundle install
````


# Run tests

```
$ rspec
```


# Usage

```
$ ./bin/multiply_primes 3
```


# Example
```
---------------------------------
|       |     2 |     3 |     5 |
---------------------------------
|     2 |     4 |     6 |    10 |
---------------------------------
|     3 |     6 |     9 |    15 |
---------------------------------
|     5 |    10 |    15 |    25 |
---------------------------------
```

# Complexity

This application implements the Sieves of Eratosthenes which has a complexity of O(n log log n) so it is theoretically possible to scale to very large numbers. The limitation will be its memory requirement. This algorithm is memory intensive and will scale up to the point where it uses all the memory available.

