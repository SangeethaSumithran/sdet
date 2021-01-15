class Car:


    def __init__(self,manufacturer, model, make, transmission, color):
        self.manufacturer = manufacturer
        self.model = model
        self.make = make
        self.transmission = transmission
        self.color = color

    def accelerate(self):
         print (self.manufacturer + self.model + " has started moving")

    
    def stop(self):
        print (self.manufacturer + self.model + " has stopped")
    
one = Car("Ford", "Mustang", "2015", "Manual", "Yellow")
two = Car("Suziki", "Baleno", "2013", "Manual", "White")
three = Car("Volkswagen", "Polo", "2017", "Automatic", "Blue") 

one.accelerate()
one.stop()
two.accelerate()
two.stop()
three.accelerate()
three.stop()


        


