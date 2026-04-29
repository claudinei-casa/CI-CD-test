import pytest
from hello import say_hello, add, subtract, multiply, divide

def test_say_hello():
    assert say_hello() == "Hello, World!"

def test_add():
    assert add(2, 3) == 5
    assert add(-1, 1) == 0

def test_subtract():
    assert subtract(10, 5) == 5
    assert subtract(0, 7) == -7

def test_multiply():
    assert multiply(3, 4) == 12
    assert multiply(5, 0) == 0

def test_divide():
    assert divide(10, 2) == 5
    with pytest.raises(ValueError, match="Cannot divide by zero"):
        divide(10, 0)
