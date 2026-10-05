from abc import ABC, abstractmethod

class Animal(ABC): #abstract class
    @abstractmethod
    def make_sound(self):
        pass

class Lion(Animal):
    def make_sound(self):
        print("Roar!")

class Cat(Animal):
    def make_sound(self):
        print("Meow!")

lion = Lion()
lion.make_sound()

cat = Cat()
cat.make_sound()
