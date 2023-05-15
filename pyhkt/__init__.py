"""
__init__.py
Ian Kollipara
2023.05.15

Emulating Higher Kinded Types in Python
"""

# Imports
from typing import Generic, Self, TypeVar

T = TypeVar("T")
Y = TypeVar("Y")


class HKT(Generic[T, Y]):
    ...


class ArrayList(HKT[Self, Y]):
    def __init__(self, *items: Y) -> None:
        self.items = items


class MySet(HKT[Self, Y]):
    def __init__(self, *items: Y) -> None:
        self.items = set(items)


