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
        the is_prime method get a integer number and determine
        if number is primes
        """
        cont = 0
        if num_int != 0 and num_int != 1:
            if num_int > 2:
                for valor in range(2, num_int):
                    if num_int % valor == 0:
                        cont += 1
                        return False
                if cont == 0:
                    return True
            else:
                return True
        else:
            return False
