class HomeController < ApplicationController
  def index
    @toppings = Topping.all
    @pizzas = Pizza.includes(:toppings).all
  end
end
