®"""
The module primes contain a class for the evaluation of intern
vauxoo aplication
"""


class prime_class(object):
    """
    This class contains one method called is_prime, this method
    requires an integer number for working
    """
    def is_prime(self, num_int):
        """
        the is_prime method get a integer number and determine
        if number is primes
        """
        for x in range(2, num_int):
            if num_int % x == 0:
                return False
                break
        else:
            return True

"""
for check uncomment the next lines:
g= prime_class();
print g.is_prime(997)
"""
