from app.integrator.banker import Banker


def test_deposit():
    bank = Banker()
    assert bank.balance == 0
    bank.deposit(10)
    assert bank.balance == 10
