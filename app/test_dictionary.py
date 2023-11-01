from .dictionary import Dictionary


def test_dog():
    assert Dictionary.dog() == "A pet animal"


def test_car():
    assert Dictionary.car() == "Something that you drive"