class Orderline < ApplicationRecord
  belongs_to :product, foreign_key: :prod_id
  belongs_to :order, foreign_key: :orderid
end
