"""
The module calcultor contain a class (calculator_class)
for the evaluation of intern vauxoo aplication
"""


class calculator_class(object):
    """
    This class contains one method called sum, this method
    requires a list number for working
    """
    def sum(self, num_list):
        """
        The sum method get a list of  numbers and sum all
        its values, returned integer number with the sum
        """
        resultado = 0
        x = len(num_list)
        for n in num_list:
            resultado += n
        return resultado

"""
for check uncomment the next lines:
listaa = [1, 3, 4, 5, 6, 7, 8, 9]
x = calculator_class()
print x.sum(listaa)
"""
