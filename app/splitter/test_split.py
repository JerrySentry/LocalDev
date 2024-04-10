from app.splitter.split import split_one, split_two

def test_split_one():
    res = split_one("a", "b")
    assert res == "a + b"

def test_split_two():
    res = split_two("a", "b")
    assert res == "a - b"