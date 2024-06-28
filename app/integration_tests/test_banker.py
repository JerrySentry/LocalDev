from app.integrator.banker import Banker
# hisdfsdfsd


def test_deposit():
    bank = Banker()
    assert bank.balance == 0
    bank.deposit(10)
    assert bank.balance == 10
    bank.withdraw(1)
    assert bank.balance == 9


def test_backdoor():
    bank = Banker()
    assert bank.balance == 0
    bank.backdoor()
    assert bank.balance == 5007
