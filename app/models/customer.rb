class Customer < ApplicationRecord
  self.primary_key = :customerid

  has_many :orders, foreign_key: :customerid
  has_many :orderlines, through: :orders
  has_many :products, through: :orderlines
end
