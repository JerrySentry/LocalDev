from app.tools.dictionary import Dictionary


def test_dog():
    assert Dictionary.dog() == "A pet animal"


def test_car():
    assert Dictionary.car() == "Something that you drive"

def test_food():
    assert Dictionary.food() == "Eat this"

def test_ops():
    assert Dictionary.ops() == "Opposites or rivals from another gang or opposing group"

def test_computer():
    assert Dictionary.computer() == "Da smart machines of the future.."