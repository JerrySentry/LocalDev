class Calculator:

    def add(x, y):
        return x + y

    def subtract(x, y):
        return x - y

    def multiply(x, y):
        return x * y

    def divide(x, y):
        if y == 0:
            return 'Cannot divide by 0'
        return x * 1.0 / y

    def modulo(x, y):
        return x % y

    def trippy(x, y):
        x += 1
        y -= 1
        return x * y

    def minus_one(x):
        return x-1

    def plus_one(x):
        return x+1

    def double_it(x):
        return x*2
    
    def wacko(x):
        return x+x+x

    def sqrt(x):
        return x+3