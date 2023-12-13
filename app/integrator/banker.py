

class Banker:
    def __init__(self):
        self.balance = 0

    def deposit(self, val):
        self.balance += val

    def withdraw(self, val):
        self.balance -= val

    def reset(self):
        self.balance = 0

    def backdoor(self):
        self.balance += 2000