require 'bundler/setup'

Bundler.require
require_rel '../app'

c1 = Customer.new("Bobby", "Birdman")
c2 = Customer.new("Bernice", "Bubbles")
c3 = Customer.new("Best", "Blueberry")

r1 = Restaurant.new("Charlie's Steakhouse")
r2 = Restaurant.new("Cocina")
r3 = Restaurant.new("Catcher in the Rye")

rv1 = 

