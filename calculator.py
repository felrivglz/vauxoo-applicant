"""
The module calcultor contain a class (calculator_class)
for the evaluation of intern vauxoo aplication
"""


class CalculatorClass(object):
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
        for numero in num_list:
            resultado += numero
        return resultado
