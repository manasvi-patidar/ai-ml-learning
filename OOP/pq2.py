class Product:
    count = 0

    def __init__(self, name, price):
        self.name = name
        self.price = price
        Product.count += 1

    def get_info(self): #instance method
        print(f"price of {self.name} is Rs.{self.price}")

    @classmethod
    def get_count(cls): #class method
        print(f"total products in store = {cls.count}")

    @staticmethod
    def calc_discount(price, discount):
        print(f"discount price = {price - (price * discount / 100)}")

p1 = Product("phone", 10_000)
p2 = Product("laptop", 50_000)
p3 = Product("pen", 10)

p1.get_info()
Product.get_count()
p1.calc_discount(10_000, 10)
