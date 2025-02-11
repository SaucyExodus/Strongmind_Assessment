class Topping < ApplicationRecord
  has_many :pizza_toppings
  has_many :pizzas, through: :pizza_toppings

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  # Add a callback to delete associated pizzas
  before_destroy :delete_associated_pizzas

  private

  def delete_associated_pizzas
    pizzas.each do |pizza|
      pizza.destroy # This will delete the pizza entirely
    end
  end
end
