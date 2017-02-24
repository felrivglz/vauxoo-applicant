"""
The module primes contain a class for the evaluation of intern
vauxoo aplication
"""


class PrimeClass(object):
    """
    This class contains one method called is_prime, this method
    requires an integer number for working
    """
    def is_prime(self, num_int):
        """
        The is_prime method get a integer number and determine
        if number is primes
        """
        cont = 0
        if num_int > 0:
            for valor in range(1, num_int):
                if num_int % valor == 0:
                    cont += 1
            if cont != 1:
                return False
            else:
                return True
        else:
            return False
