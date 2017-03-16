class Order < ApplicationRecord
  self.primary_key = :orderid

  belongs_to :customer, foreign_key: :customerid
  has_many :orderlines, foreign_key: :orderid
  has_many :products, through: :orderlines
end
