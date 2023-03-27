class Product < ApplicationRecord
    validates_presence_of :product_name
    validates_presence_of :product_code
    validates_presence_of :description
    validates_presence_of :price
end
