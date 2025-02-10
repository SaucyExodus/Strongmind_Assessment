class Topping < ApplicationRecord
    validates :name, uniqueness: true, presence: true
end
