class Product < ApplicationRecord
  self.primary_key = 'prod_id'

  has_one     :inventory, foreign_key: :prod_id
  belongs_to  :category

  has_many    :orderlines
  has_many    :orders,      through: :orderlines
end
